package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.model.Student;
import com.classtime.service.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Random;

/**
 * Created by Administrator on 2016/7/6.
 */
@Controller
@RequestMapping("/student")
public class StudentController extends MyBaseController{

    @Autowired
    private StudentManager studentManager;


    /**
     *学生添加前页面，录入信息，提交
     * @param request
     * @param model
     * @return
     */

    @RequestMapping(value = "addStudentBefore.html")
    public String addBefore(HttpServletRequest request, Model model) {
        //Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        System.out.println("11111111111111");

        return "addStudent";
    }




    /**
     * 学员添加页面,添加成功后转到课程添加页
     * @param request
     * @param pageModel
     * @return
     */

    @RequestMapping(value = "add.html", method = RequestMethod.POST)
    public String addAction(HttpServletRequest request, @ModelAttribute Student pageModel) {

        //System.out.print("22222222222222222");

        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        //System.out.print("cpsuser.getId()="+cpsuser.getId());

        if(cpsuser==null){
            return "/login";
        }
        Random ran=new Random();
        String tmpRan = ran.nextInt(9999)+"";
        if(tmpRan.length()<4){
            for(int i=0;i<4-tmpRan.length();i++){
                tmpRan = "0"+tmpRan;
            }
        }

        String sno = DateUtils.formatDate(new Date(), "yyyyMMddHHmmss")+tmpRan;
        pageModel.setSno(sno);
        pageModel.setUid(Integer.parseInt(cpsuser.getId()+""));
        studentManager.insertSelective(pageModel);

        //return "/class/classaddbefore/"+pageModel.getId();
        return "redirect:/class/classaddbefore.html";
    }



}
