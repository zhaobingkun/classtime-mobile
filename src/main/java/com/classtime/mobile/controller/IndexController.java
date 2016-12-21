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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController extends MyBaseController {


    @Autowired
    private StudentManager studentManager;



    @Autowired
    private ClassTimeMainManager classTimeMainManager;

    @RequestMapping(value = "/")
    public String homeLogin(HttpServletRequest request, Model model) {

        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);



        if(cpsuser!=null){
            System.out.println(cpsuser.getId());
            List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));

            if(studentList.size()>0) {
                for(int i=0;i<studentList.size();i++){
                    List<ClassTimeMain> classTimeMains = classTimeMainManager.selectClassMainForSid(studentList.get(i).getId());
                    studentList.get(i).setClassTimeMainList(classTimeMains);
                }
                model.addAttribute("studentList",studentList);
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

    @RequestMapping(value = "/calendar/{sid}")
    public String calendar(HttpServletRequest request, Model model,@PathVariable("sid") String sid) {
        model.addAttribute("sid",sid);
        //return "calendar";
        return "calendar-new";
    }

    @RequestMapping(value = "/index.html")
    public String home(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        if(cpsuser!=null){
            System.out.println(cpsuser.getId());
            List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));

            System.out.println("studentList.size()"+studentList.size());

            if(studentList.size()>0) {
                for(int i=0;i<studentList.size();i++){
                    List<ClassTimeMain> classTimeMains = classTimeMainManager.selectClassMainForSid(studentList.get(i).getId());
                    studentList.get(i).setClassTimeMainList(classTimeMains);
                }
                model.addAttribute("studentList",studentList);
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

    @RequestMapping(value = "/oth/{page}.html")
    public String othHtml(@PathVariable("page") String page) {
        return "/oth/" + page;
    }

}
