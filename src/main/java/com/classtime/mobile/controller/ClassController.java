package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.service.manager.ClassTimeChildManager;
import com.classtime.service.manager.ClassTimeMainManager;
import com.classtime.service.manager.StudentManager;
import com.classtime.service.model.*;
import com.classtime.service.utils.DateUtils;
import com.classtime.service.utils.WeekDayUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import java.util.Date;
/**
 * Created by Administrator on 2016/7/5.
 */
@Controller
@RequestMapping("/class")
public class ClassController  extends  MyBaseController  implements Serializable {

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

        System.out.println(cpsuser.getId());

        if(cpsuser!=null) {
            List<Student> studentList = studentManager.selectForUser(Integer.parseInt(cpsuser.getId() + ""));
            System.out.println("studentList="+studentList.size());

            //如果没有课程则转到课程添加页面

            if (studentList.size() <= 0) {
                return "/addStudent";
            }

            for (int i = 0; i < studentList.size(); i++) {
                List<ClassTimeMain> classTimeMains = classTimeMainManager.selectClassMainForSid(studentList.get(i).getId());
                studentList.get(i).setClassTimeMainList(classTimeMains);
            }


            for (int i = 0; i < studentList.size(); i++) {

               Student student =  studentList.get(i);
                System.out.println("student.getId()="+student.getSno());
                for (int j = 0; j < studentList.get(i).getClassTimeMainList().size(); j++) {
                    ClassTimeMain cmain = studentList.get(i).getClassTimeMainList().get(j);
                    System.out.println("cmain.getId()="+cmain.getId());

                }
            }


            model.addAttribute("studentList", studentList);
            System.out.println("studentList.size()="+studentList.size());
            return "classlist";
        }
        else{
            return "/login";
        }

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
        List<Student> studentList =  studentManager.selectForUser(Integer.parseInt(cpsuser.getId()+""));
       // model.addAttribute("sid",sid);
        model.addAttribute("studentList",studentList);
        return "addClass";
    }


    /**
     * 课程添加页面，添加主表，批量添加从表。添加成功后转到课程列表页
     * @param request
     * @param pageModel
     * @return
     */

    @RequestMapping(value = "classadd.html", method = RequestMethod.POST)
    public String classadd(HttpServletRequest request, @ModelAttribute ClassTimeMain pageModel) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

       // ClassTimeMain classTimeMain = new ClassTimeMain();

        //pageModel.setSid();
        pageModel.setBegintime(DateUtils.parseDate(pageModel.getBegintimeStr(),"yyyy-MM-dd"));
        pageModel.setSumnum(pageModel.getNum());



        WeekDayUtil weekDayUtil = new WeekDayUtil();
        String[] weekDayArr = pageModel.getWeekday().split(",");

        List<Integer> daysOfOneWeek = new ArrayList();
        for(int i=0;i<weekDayArr.length;i++) {
            daysOfOneWeek.add(Integer.parseInt(weekDayArr[i]));  //周六
        }
//DateUtils.formatDate(pageModel.getEndtime(), "yyyy-MM-dd")
        List daysNeedBookList = weekDayUtil.getDates(pageModel.getBegintimeStr(),"", daysOfOneWeek, pageModel.getNum());

        String endDateStr = "";
        if(daysNeedBookList.size()>0){
            endDateStr =  (String)daysNeedBookList.get(daysNeedBookList.size()-1);
        }
        pageModel.setEndtime(DateUtils.parseDate(endDateStr,"yyyy-MM-dd"));
        classTimeMainManager.insertSelective(pageModel);

        List<ClassTimeChild> childList = new ArrayList();
        for(int i=0;i<daysNeedBookList.size();i++){
            ClassTimeChild classTimeChild = new ClassTimeChild();
            classTimeChild.setMid(pageModel.getId());


            System.out.println("str="+daysNeedBookList.get(i).toString() +" "+pageModel.getClasstime()+":00");

            System.out.println("datetime = " + DateUtils.parseDate(daysNeedBookList.get(i).toString() +" "+pageModel.getClasstime()+":00","yyyy-MM-dd HH:mm:ss"));

            classTimeChild.setClassdatetime(DateUtils.parseDate(daysNeedBookList.get(i).toString() +" "+pageModel.getClasstime()+":00","yyyy-MM-dd HH:mm:ss"));
            childList.add(classTimeChild);
        }

        classTimeChildManager.addClassTimeChildBatch(childList);

        return "redirect:/class/classlist.html";
    }





    /**
     * 学生及课程列表，多个学生
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "classinfolist.html")
    public String classInfoList(HttpServletRequest request, Model model,@RequestParam("mid") int mid) {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        System.out.println(cpsuser.getId());

        if(cpsuser!=null) {
                List<ClassTimeChild> classTimeChilds = classTimeChildManager.selectByMainId(mid);
                model.addAttribute("classinfolist", classTimeChilds);
            return "classinfolist";
        }
        else{
            return "/login";
        }

    }


    /**
     * 某一门课程列表信息（今后要改成行程日历页面，目前暂时用列表代替）,跳转到页面
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "classchildlist/{mid}")
    public String classChildList(HttpServletRequest request, Model model,@PathVariable("mid") String mid) {
            model.addAttribute("mid",mid);
            return "classchildlist";
    }


    /**
     * 某一门课程列表信息（今后要改成行程日历页面，目前暂时用列表代替），获取json
     * @param request
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "classchildlist.json")
    public String classChildListJson(HttpServletRequest request, Model model,@RequestParam("mid") String mid) {
            List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectByMainIdByMonth(Integer.parseInt(mid));

            System.out.println("mid==="+mid);
            System.out.println(toJsonResult(classTimeMainList));
        ViewModel viewModel = new ViewModel();
          List viewList = new ArrayList();
        for(int i=0;i<classTimeMainList.size();i++){
            ClassTimeChild  child = classTimeMainList.get(i);
            viewModel.setId(child.getId());
            viewModel.setClassName(child.getClassTimeMain().getClassname());
            viewModel.setStartTime(DateUtils.formatDate(child.getClassdatetime(), "yyyy-MM-dd HH:mm:ss"));
            viewModel.setEndTime(DateUtils.formatDate(DateUtils.getHourAfter(child.getClassdatetime(), 1),"yyyy-MM-dd HH:mm:ss"));
            viewModel.setType1(0);
            viewModel.setType2(0);
            viewModel.setType3(0);
            viewModel.setColor(10);
            viewModel.setType4(0);
            viewModel.setAddress(child.getClassTimeMain().getClassaddress());
            viewModel.setContent(child.getContent());
            viewList.add(viewModel);
        }
       // int size=viewList.size();
        //String[] array = (String[])viewList.toArray(new String[size]);


        System.out.print(toJsonResult(viewList));
        return toJsonResult(classTimeMainList);

    }


    /**
     * 取当 前学生 当前月 所有上课日历 组成json串并返回
     * @param request
     * @param pageModel
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "listClassByMonth.json", method = RequestMethod.POST)
    public String listByMonth(HttpServletRequest request, @ModelAttribute Student pageModel) {
        String mid = "16";
        List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectByMainIdByMonth(Integer.parseInt(mid));

        //System.out.println("mid==="+mid);
      //  System.out.println(toJsonResult(classTimeMainList));
        ViewModel viewModel = new ViewModel();
        List<ViewModel> viewList = new ArrayList();
        for(int i=0;i<classTimeMainList.size();i++){
            ClassTimeChild  child = classTimeMainList.get(i);
            viewModel.setId(child.getId());
            viewModel.setClassName(child.getClassTimeMain().getClassname());
            viewModel.setStartTime(DateUtils.formatDate(child.getClassdatetime(), "yyyy-MM-dd HH:mm:ss"));
            viewModel.setEndTime(DateUtils.formatDate(DateUtils.getHourAfter(child.getClassdatetime(), 1),"yyyy-MM-dd HH:mm:ss"));
            viewModel.setType1(0);
            viewModel.setType2(0);
            viewModel.setType3(0);
            viewModel.setColor(10);
            viewModel.setType4(0);
            viewModel.setAddress(child.getClassTimeMain().getClassaddress());
            viewModel.setContent(child.getContent());
            viewList.add(viewModel);


        }

        Object[][] aa = new String[viewList.size()][11];

        for(int i=0;i<viewList.size();i++){
            ViewModel view = viewList.get(i);
            aa[i][0] = view.getId()+"";
            aa[i][1] = view.getClassName();
            aa[i][2] = "/Date("+DateUtils.parseDate(view.getStartTime(),"yyyy-MM-dd HH:mm:ss").getTime()+"/)";
            aa[i][3] = "/Date("+DateUtils.parseDate(view.getEndTime(),"yyyy-MM-dd HH:mm:ss").getTime()+"/)";
            aa[i][4] = view.getType1()+"";
            aa[i][5] = view.getType1()+"";
            aa[i][6] = view.getType1()+"";
            aa[i][7] = view.getColor()+"";
            aa[i][8] = view.getType1()+"";
            aa[i][9] = "";
            aa[i][10] = "";
        }


        viewJson vj = new viewJson();
        vj.setStart("/Date("+new Date().getTime()+"/)");
        vj.setEnd("/Date("+new Date().getTime()+"/)");
        vj.setError(null);
        vj.setIssort("true");
        vj.setEvents(aa);


        System.out.println(toJsonResult(vj));

    return toJsonResult(vj);
    }



    @ResponseBody
    @RequestMapping(value = "addClass.json", method = RequestMethod.POST)
    public String addClass(HttpServletRequest request, @ModelAttribute Student pageModel) {

        System.out.print("addClass.json");

        //Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        //System.out.print("cpsuser.getId()="+cpsuser.getId());


        return "getListByMonth.json";
    }



    @ResponseBody
    @RequestMapping(value = "delClass.json", method = RequestMethod.POST)
    public String delClass(HttpServletRequest request, @ModelAttribute Student pageModel) {

        System.out.print("delClass.json");

        //Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);

        //System.out.print("cpsuser.getId()="+cpsuser.getId());


        return "getListByMonth.json";
    }


}
