package com.classtime.mobile.controller;


import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController extends MyBaseController {


    @Autowired
    private StudentManager studentManager;

    @RequestMapping(value = "/")
    public String homeLogin(HttpServletRequest request, Model model) {

        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        if(cpsuser!=null){
            List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
            if(studentList.size()>0) {
                return "classlist";
            }
            else{
                return "addStudent";
            }
        }
        else {
            return "/login";
        }
    }



    @RequestMapping(value = "/index.html")
    public String home(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        if(cpsuser!=null){
            List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
            if(studentList.size()>0) {
                return "classlist.html";
            }
            else{
                return "/student/addStudentBefore.html";
            }
        }
        else {
            return "/login";
        }
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
