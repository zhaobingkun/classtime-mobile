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

      //  System.out.println(cpsuser.getId());

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
                    List<ClassTimeChild> child = classTimeChildManager.selectStatusByChild(cmain.getId());

                    System.out.print("childList===="+toJsonResult(child));

                    for(int h=0;h<child.size();h++) {
                        if(child.get(h).getStatus()==0) {
                            cmain.setNum(child.get(h).getClassnum());
                        }
                        if(child.get(h).getStatus()==1) {
                            cmain.setExtendednum(child.get(h).getClassnum());
                        }
                        else if(child.get(h).getStatus()==2) {
                            cmain.setLeavenum(child.get(h).getClassnum());
                        }
                        else if(child.get(h).getStatus()==3) {
                            cmain.setChangenum(child.get(h).getClassnum());
                        }
                        else if(child.get(h).getStatus()==4) {
                            cmain.setMakeupnum(child.get(h).getClassnum());
                        }
                        else if(child.get(h).getStatus()==5) {
                            cmain.setExtendednum(child.get(h).getClassnum());
                        }
                        else{
                            cmain.setNum(child.get(h).getClassnum());
                        }
                    }



                    System.out.println("cmain.getId()="+cmain.getId());

                }
            }

            System.out.print("studentList===="+toJsonResult(studentList));
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
        //有结束日期，将结束日期转成日期类型写到对象里
        if(!"".equals(pageModel.getEndtimeStr()) && pageModel.getEndtimeStr()!=null) {
            pageModel.setEndtime(DateUtils.parseDate(pageModel.getEndtimeStr(), "yyyy-MM-dd"));
        }


        //课程数和结束日期都为空，则默认写20次课
        if("".equals(pageModel.getEndtimeStr()) && pageModel.getNum()==null){
            pageModel.setNum(20);
        }



        //获取上课星期列表
        WeekDayUtil weekDayUtil = new WeekDayUtil();
        String[] weekDayArr = pageModel.getWeekday().split(",");
        List<Integer> daysOfOneWeek = new ArrayList();
        for(int i=0;i<weekDayArr.length;i++) {
            daysOfOneWeek.add(Integer.parseInt(weekDayArr[i]));  //周六
        }

        List daysNeedBookList = new ArrayList();

        //有结束日期，就不用写总课程数，通过开始结束日期计算出总课程数。
        if(!"".equals(pageModel.getEndtimeStr()) && pageModel.getEndtimeStr()!=null) {
            daysNeedBookList = weekDayUtil.getDates(pageModel.getBegintimeStr(),pageModel.getEndtimeStr(), daysOfOneWeek);
            pageModel.setNum(daysNeedBookList.size());
        }
        //没有结束日期，有课程数，计算出结束日期。
        else {
            String endDateStr = "";
            daysNeedBookList = weekDayUtil.getDates(pageModel.getBegintimeStr(), "", daysOfOneWeek, pageModel.getNum());
            if(daysNeedBookList.size()>0){
                endDateStr =  (String)daysNeedBookList.get(daysNeedBookList.size()-1);
            }
            pageModel.setEndtime(DateUtils.parseDate(endDateStr,"yyyy-MM-dd"));
        }

        pageModel.setSumnum(pageModel.getNum());  //记录上课总数

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


        //要改。注意注意
            List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectByMainIdByMonth(Integer.parseInt(mid),"2016-12-01");

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


        //System.out.print(toJsonResult(viewList));
        return toJsonResult(classTimeMainList);

    }


    /**
     * 取当 前学生 当前月 所有上课日历 组成json串并返回
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "listClassByMonth.json", method = RequestMethod.POST)
    public String listByMonth(HttpServletRequest request,@RequestParam("sid") String sid
            ,@RequestParam("checkDate") String checkDate
    ) {
        List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectByMainIdByMonth(Integer.parseInt(sid),checkDate);
       // System.out.println(toJsonResult(classTimeMainList));

    return toJsonResult(classTimeMainList);
    }

    @ResponseBody
    @RequestMapping(value = "listClassByDay.json", method = RequestMethod.POST)
    public String listByDay(HttpServletRequest request,@RequestParam("sid") String sid
            ,@RequestParam("checkDate") String checkDate
    ) {
        List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectByMainIdByDay(Integer.parseInt(sid),checkDate);
        return toJsonResult(classTimeMainList);
    }





    @ResponseBody
    @RequestMapping(value = "listClassByAdd.json", method = RequestMethod.POST)
    public String listByAdd(HttpServletRequest request,@RequestParam("sid") String sid
    ) {
        //List<ClassTimeChild> childList = classTimeChildManager.selectByMainIdByDay(Integer.parseInt(sid),checkDate);

        List<ClassTimeMain> mainList =  classTimeMainManager.selectClassMainForSid(Integer.parseInt(sid));
        //System.out.println(toJsonResult(mainList));
/*
        Map<String,Object> classList = new HashMap<String,Object>();
        classList.put("child",childList);
        classList.put("mail",mainList);
        System.out.println(toJsonResult(childList));
*/
        return toJsonResult(mainList);
    }


    @ResponseBody
    @RequestMapping(value = "addClass.json", method = RequestMethod.POST)
    public String addClass(HttpServletRequest request,@RequestParam("classNameId") String classNameId,@RequestParam("classTime") String classTime,@RequestParam("classDate") String classDate
    ) {
       // System.out.print("addClass.json");
        ClassTimeChild  child = new ClassTimeChild();
        //System.out.println(DateUtils.parseDate(classDate +" "+classTime+":00","yyyy-MM-dd HH:mm:ss"));
        child.setMid(Integer.parseInt(classNameId));
        child.setClassdatetime(DateUtils.parseDate(classDate +" "+classTime+":00","yyyy-MM-dd HH:mm:ss"));
        child.setEndtime(DateUtils.parseDate(classDate +" "+classTime+":00","yyyy-MM-dd HH:mm:ss"));

        int result = classTimeChildManager.insertSelective(child);

        return toJsonResult(result,"","");

    }


    /**
     * 删除某一节课程
     * @param request
     * @param childid
     * @return
     */

    @ResponseBody
    @RequestMapping(value = "delClass.json", method = RequestMethod.POST)
    public String delClass(HttpServletRequest request,@RequestParam("childid") String childid) {

        System.out.print("delClass.json");
        ClassTimeChild  child = new ClassTimeChild();
        child.setId(Integer.parseInt(childid));
        child.setStatus(2);
        int result = classTimeChildManager.updateByPrimaryKeySelective(child);
        return toJsonResult(result,"","");
    }


    /**
     * 删除某一门课程
     * @param request
     * @param mid
     * @return
     */

    @ResponseBody
    @RequestMapping(value = "delMainClass.json", method = RequestMethod.POST)
    public String delMainClass(HttpServletRequest request,@RequestParam("mid") String mid) {
        int result = 0;
        result = classTimeMainManager.deleteByPrimaryKey(Long.parseLong(mid));
        result = classTimeChildManager.deleteByMainId(Integer.parseInt(mid));
        return toJsonResult(result,"","");
    }



    @ResponseBody
    @RequestMapping(value = "listClassByStatus.json", method = RequestMethod.POST)
    public String listByStatus(HttpServletRequest request, Model model,@RequestParam("mid") String mid
            ,@RequestParam("status") String status
    ) {
        List<ClassTimeChild> list = classTimeChildManager.selectByStatus(Integer.parseInt(mid),Integer.parseInt(status));
        model.addAttribute("list",list);
        return "classlistbystatus";
    }

/*
    public void updateClassMainNum() {
        String checkDate=DateUtils.formatDate(new Date(),"yyyy-MM-dd HH:mm:ss");
        System.out.print("checkDate===="+checkDate);
        //checkDate="2016-09-10 12:30";
       List<ClassTimeChild>  childList = classTimeChildManager.selectStatusByChild();

        System.out.println(toJsonResult(childList));
        ClassTimeMain main = new ClassTimeMain();
        for(int i=0;i<childList.size();i++){

        }



    }*/

}
