package com.classtime.mobile.interceptor;

import com.classtime.mobile.util.ConstantUtil;
import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.model.Cpsuser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhaobk on 2015-12-16.
 * 用户登录拦截器
 */
public class ValidateUserInterceptor implements HandlerInterceptor {
    protected static Logger logger = LoggerFactory.getLogger(ValidateUserInterceptor.class);
    final static String loginUrl = ConstantUtil.WEBAPP_URL + ConstantUtil.LOGIN_URL + "?location=";
    final static String USER_SPACE = "center";
    List<String> list = new ArrayList<String>();

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        //response.sendRedirect("/login.jsp");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception err) throws Exception {
    }

    @Override
    public boolean preHandle(HttpServletRequest servletRequest, HttpServletResponse servletResponse, Object handler) throws Exception {
        list.add(USER_SPACE);
        HttpServletRequest request = servletRequest;
        HttpServletResponse response = servletResponse;
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        if (null != cpsuser) {
            //cookie计算，如果用户点击页面，重新设置cookie的有效期
            CookieUtil.setUserCookie(response, cpsuser, CookieUtil.COOKIE_LIVE_EXPIRY);
            return true;
        }
        String url = ConstantUtil.WEBAPP_URL; //请求协议 http 或 https
        url += request.getRequestURI();
        String sQueryString = request.getQueryString();
        boolean flag = false;
        for (String excep : list) {
            if (url.contains(excep)) {
                flag = true;
                break;
            }
        }
    /*    boolean flagExc = false;
        for (String excep : listExcep) {
            if (url.contains(excep)) {
                flagExc = true;
                break;
            }
        }*/
        logger.debug(" doFilter  list size  " + list.size() + " flag " + flag + " url " + url + " sQueryString " + sQueryString);
        if (flag) {
            StringBuffer sb = new StringBuffer();
            sb.append(url);
            if (null != sQueryString)
                sb.append("?").append(sQueryString);
            response.sendRedirect(loginUrl + URLEncoder.encode(sb.toString(), "UTF-8"));
            return false;
        }
        return true;
    }
}