package com.classtime.mobile.controller;


import com.classtime.service.manager.PictemplateManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class IndexController extends MyBaseController {

    @Autowired
    private PictemplateManager picManager;

    @RequestMapping(value = "/")
    public String homeLogin(HttpServletRequest request, Model model) {
        return "/login";
    }



    @RequestMapping(value = "/index.html")
    public String home(HttpServletRequest request, Model model) {
        return "/login";
    }

    @RequestMapping(value = "/oth/{page}.html")
    public String othHtml(@PathVariable("page") String page) {
        return "/oth/" + page;
    }
    @RequestMapping(value = "/partner/wd.html")
    public String othHtml() {
        return "/partner/wanda";
    }

    @RequestMapping(value = "/partner/yidian.html")
    public String othHtmlAward() {
        return "/partner/yidian";
    }
}
