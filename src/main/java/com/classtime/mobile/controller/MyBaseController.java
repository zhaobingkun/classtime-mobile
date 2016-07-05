package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.beans.JsonResult;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.utils.JsonTools;
import com.classtime.service.utils.StringTools;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @1、添加结果进Model供view层展�?
 * @2、controller层异常处理的�?些方�?
 * @3、日志Loggger
 */
public abstract class MyBaseController {
    protected static Logger logger = LoggerFactory.getLogger(MyBaseController.class);
    protected static Logger opLogger = LoggerFactory.getLogger("oplog");


    /**
     * @param message 页面显示的成功信�?
     * @param args    信息中的占位符参�?
     */
    protected void addSuccess(Model model, String message, Object... args) {
        model.addAttribute("list_result", "list_success");
        model.addAttribute("list_message", StringTools.toLogString(message, args));
    }

    /**
     * @param error 失败的原�?
     * @param args  信息中的占位符参�?
     */
    protected void addError(Model model, String error, Object... args) {
        model.addAttribute("list_result", "list_error");
        model.addAttribute("list_message", StringTools.toLogString(error, args));
    }

    /**
     * 异常处理
     *
     * @param e
     * @return ""
     */
    @ExceptionHandler
    public ModelAndView handleException(Exception e) {
        logger.error("handleException :", e);
        ModelAndView model = new ModelAndView("oth/error");
        return model.addObject("list_result", "list_error").addObject("list_message", e.toString());
    }

    public String toJsonResult(int rf, String rc, Object rv) {
        JsonResult jsonResult = new JsonResult(rf, rc, rv);
        return toJsonResult(jsonResult);
    }

    public String toJsonResult(Object rv) {
        String result;
        try {
            result = JsonTools.toJsonStr(rv);
        } catch (Exception e) {
            logger.error("MyBaseController toJsonResult error:", e);
            result = JsonTools.toJsonStr("");
        }
        return result;
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    public void writeResponse(HttpServletResponse response, String result) throws IOException {
        response.getOutputStream().print(result);
        PrintWriter writer = response.getWriter();
        writer.write(result);
        writer.flush();
        writer.close();
    }

    protected Cpsuser getLoginUser(HttpServletRequest request) {
        logger.error(".....begin getLoginUser .....");
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        return cpsuser;
    }
}
