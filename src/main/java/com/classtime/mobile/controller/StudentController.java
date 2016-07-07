package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/7/6.
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentManager studentManager;


    /**
     *学生添加前页面，录入信息，提交
     * @param request
     * @param model
     * @return
     */

    @RequestMapping("addStudentBefore.html")
    public String addBefore(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        return "addStudent";
    }


    /**
     * 学员添加页面,添加成功后转到课程添加页
     * @param request
     * @param pageModel
     * @return
     */

    @RequestMapping("add")
    public String addAction(HttpServletRequest request, @ModelAttribute Student pageModel) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        studentManager.insert(pageModel);

        return "/class/classaddbefore.html";
    }

}
