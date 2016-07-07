package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.ClassTimeMainManager;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.ClassTimeMain;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/7/5.
 */
@Controller
@RequestMapping("/class")
public class ClassController {

    @Autowired
    private StudentManager studentManager;

    @Autowired
    private ClassTimeMainManager classTimeMainManager;


    /**
     * 学生及课程列表，多个学生
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("classlist.html")
    public String classlist(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
        model.addAttribute("studentList",studentList);
        return "classlist";
    }

    /**
     * 课程添加前页面，录入课程信息，提交
     * @param request
     * @param model
     * @return
     */

    @RequestMapping("classaddbefore.html")
    public String classaddbefore(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        return "addClass";
    }


    /**
     * 课程添加页面，添加成功后转到课程列表页
     * @param request
     * @param model
     * @return
     */

    @RequestMapping("classadd.html")
    public String classadd(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
        ClassTimeMain classTimeMain = new ClassTimeMain();
        classTimeMainManager.insert(classTimeMain);
        model.addAttribute("studentList",studentList);
        return "classlist";
    }

}
