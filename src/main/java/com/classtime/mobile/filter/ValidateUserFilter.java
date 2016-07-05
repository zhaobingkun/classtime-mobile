package com.classtime.mobile.filter;

import com.classtime.mobile.util.ConstantUtil;
import com.classtime.mobile.util.CookieUtil;
import com.classtime.mobile.util.SessionUtil;
import com.classtime.service.model.Cpsuser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhaobk on 2015/1/4.
 */
public class ValidateUserFilter implements Filter {
    protected static Logger logger = LoggerFactory.getLogger(ValidateUserFilter.class);
    final static String loginUrl = ConstantUtil.WEBAPP_URL + ConstantUtil.LOGIN_URL + "?location=";
    final static String USER_SPACE = "center";
    final static String JSON_ACTION = "json";
    List<String> list = new ArrayList<String>();
    List<String> listExcep = new ArrayList<String>();

    public void init(FilterConfig cfg) throws ServletException {
        list.add(USER_SPACE);
        listExcep.add(JSON_ACTION);
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        if (null != cpsuser) {
            //cookie计算，如果用户点击页面，重新设置cookie的有效期
            CookieUtil.setUserCookie(response, cpsuser, CookieUtil.COOKIE_LIVE_EXPIRY);
            chain.doFilter(request, response);
            return;
        }

        String url = ConstantUtil.WEBAPP_URL; //请求协议 http 或 https
        url += request.getRequestURI();
        String sQueryString = request.getQueryString();
        if (url.contains("resources")) {
            chain.doFilter(request, response);
            return;
        }
        boolean flag = false;
        for (String excep : list) {
            if (url.contains(excep)) {
                flag = true;
                break;
            }
        }
        boolean flagExc = false;
        for (String excep : listExcep) {
            if (url.contains(excep)) {
                flagExc = true;
                break;
            }
        }
        logger.debug(" doFilter  list size  " + list.size() + " flag " + flag + " url " + url + " sQueryString " + sQueryString);
        if (flag && !flagExc) {
            StringBuffer sb = new StringBuffer();
            sb.append(url);
            if (null != sQueryString)
                sb.append("?").append(sQueryString);
            response.sendRedirect(loginUrl + URLEncoder.encode(sb.toString(), "UTF-8"));
            return;
        }
        chain.doFilter(request, response);
    }

    public void destroy() {
    }

}
