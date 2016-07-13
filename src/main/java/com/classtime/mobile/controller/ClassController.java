package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.ClassTimeChildManager;
import com.classtime.service.manager.ClassTimeMainManager;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.ClassTimeChild;
import com.classtime.service.model.ClassTimeMain;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.model.Student;
import com.classtime.service.utils.DateUtils;
import com.classtime.service.utils.WeekDayUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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

    @Autowired
    private ClassTimeChildManager classTimeChildManager;


    /**
     * 学生及课程列表，多个学生
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "classlist.html")
    public String classlist(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);


        List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));

        for(int i=0;i<studentList.size();i++){
            List<ClassTimeMain> classTimeMains = classTimeMainManager.selectClassMainForSid(studentList.get(i).getId());
            studentList.get(i).setClassTimeMainList(classTimeMains);
        }

        //如果没有课程则转到课程添加页面
       // List<Student> studentList = studentManager.(Integer.parseInt(cpsuser.getId()+""));
        if(studentList.size()<=0) {
            return "/addStudent";
        }



        for(int i=0;i<studentList.size();i++){
            for(int j=0;j<studentList.get(i).getClassTimeMainList().size();j++){
                ClassTimeMain cmain = studentList.get(i).getClassTimeMainList().get(j);
                System.out.println(cmain.getId());

            }
        }


        model.addAttribute("studentList",studentList);
        return "classlist";
    }

    /**
     * 课程添加前页面，录入课程信息，提交
     * @param request
     * @param model
     * @return
     */

    @RequestMapping(value = "classaddbefore.html")
    public String classaddbefore(HttpServletRequest request, Model model) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        return "addClass";
    }


    /**
     * 课程添加页面，添加主表，批量添加从表。添加成功后转到课程列表页
     * @param request
     * @param pageModel
     * @return
     */

    @RequestMapping(value = "classadd.html")
    public String classadd(HttpServletRequest request, @ModelAttribute ClassTimeMain pageModel) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        //List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
        ClassTimeMain classTimeMain = new ClassTimeMain();
        classTimeMainManager.insertSelective(classTimeMain);

        WeekDayUtil weekDayUtil = new WeekDayUtil();
        String[] weekDayArr = pageModel.getWeekday().split(",");

        List daysOfOneWeek = new ArrayList();
        for(int i=0;i<weekDayArr.length;i++) {
            daysOfOneWeek.add(weekDayArr[i]);  //周六
        }

        List daysNeedBookList = weekDayUtil.getDates(DateUtils.formatDate(pageModel.getBegintime(), "yyyy-MM-dd"),DateUtils.formatDate(pageModel.getEndtime(), "yyyy-MM-dd"), daysOfOneWeek, 48);



        List<ClassTimeChild> childList = new ArrayList();

        for(int i=0;i<daysNeedBookList.size();i++){
            ClassTimeChild classTimeChild = new ClassTimeChild();
            classTimeChild.setMid(classTimeMain.getId());
            classTimeChild.setClassdatetime(DateUtils.parseDate(daysNeedBookList.get(i).toString(),"yyyy-MM-dd"));
            childList.add(classTimeChild);
        }

        classTimeChildManager.addClassTimeChildBatch(childList);
        //model.addAttribute("studentList",studentList);
        return "classlist.html";
    }

}
