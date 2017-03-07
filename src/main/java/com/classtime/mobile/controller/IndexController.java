package com.classtime.mobile.controller;


import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.ClassTimeChildManager;
import com.classtime.service.manager.ClassTimeMainManager;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.ClassTimeChild;
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
    private ClassTimeChildManager classTimeChildManager;

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
                    for(int j=0;j<classTimeMains.size();j++){
                       List<ClassTimeChild> child  = classTimeChildManager.selectStatusByChild(classTimeMains.get(j).getId());

                        //System.out.print("child===="+toJsonResult(child));

                        for(int h=0;h<child.size();h++) {
                            if(child.get(h).getStatus()==0) {
                                classTimeMains.get(j).setNum(child.get(h).getClassnum());
                            }
                            if(child.get(h).getStatus()==1) {
                                classTimeMains.get(j).setExtendednum(child.get(h).getClassnum());
                            }
                            else if(child.get(h).getStatus()==2) {
                                classTimeMains.get(j).setLeavenum(child.get(h).getClassnum());
                            }
                            else if(child.get(h).getStatus()==3) {
                                classTimeMains.get(j).setChangenum(child.get(h).getClassnum());
                            }
                            else if(child.get(h).getStatus()==4) {
                                classTimeMains.get(j).setMakeupnum(child.get(h).getClassnum());
                            }
                            else if(child.get(h).getStatus()==5) {
                                classTimeMains.get(j).setExtendednum(child.get(h).getClassnum());
                            }
                            else{
                                classTimeMains.get(j).setNum(child.get(h).getClassnum());
                            }
                        }

                    }
                    studentList.get(i).setClassTimeMainList(classTimeMains);
                }

              //  System.out.print(toJsonResult(studentList));
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
