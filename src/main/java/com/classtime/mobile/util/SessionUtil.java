package com.classtime.mobile.util;


import com.classtime.service.model.Cpsuser;
import com.classtime.service.utils.SessionNames;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by zhaobk on 2015/1/23.
 */
public class SessionUtil {
    private static final Log logger = LogFactory.getLog(SessionUtil.class);

    public static void setSession(HttpServletRequest request, Cpsuser user) {
        String ip = request.getRemoteHost();
        if ("0:0:0:0:0:0:0:1".equals(ip)) ip = "127.0.0.1";
        WebUtils.setSessionAttribute(request, SessionNames.LOGIN_IP, ip);
        WebUtils.setSessionAttribute(request, SessionNames.LOGIN_TIME, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
        WebUtils.setSessionAttribute(request, SessionNames.LOGIN_USER, user);
    }

    public static Cpsuser getUserFromSession(HttpServletRequest request) {
        Object o = WebUtils.getSessionAttribute(request, SessionNames.LOGIN_USER);
        return (o == null) ? null : (Cpsuser) o;
    }

    public static void removeSession(HttpServletRequest request) {
        request.getSession().removeAttribute(SessionNames.LOGIN_USER);
        request.getSession().removeAttribute(SessionNames.LOGIN_TIME);
    }

    public static void invalidate(HttpServletRequest request) {
        request.getSession().invalidate();
    }
}
