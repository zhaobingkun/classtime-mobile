package com.classtime.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/7/5.
 */
@Controller
@RequestMapping("/classmanager")
public class classmanager {
    @RequestMapping("classlist.html")
    public String classlist() {

        return "classlist";
    }

}
