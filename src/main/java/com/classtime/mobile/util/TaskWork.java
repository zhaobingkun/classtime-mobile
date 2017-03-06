package com.classtime.mobile.util;

import com.classtime.service.manager.ClassTimeChildManager;
import com.classtime.service.model.ClassTimeChild;
import com.classtime.service.utils.DateUtils;
import com.classtime.service.utils.JsonTools;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */

public class TaskWork {

    @Autowired
    private ClassTimeChildManager classTimeChildManager;



    public void getClassSms() {
        String checkDate= DateUtils.getDateAfter(1);
        System.out.println("getClassSms====="+ DateUtils.formatDate(new Date(), "HH:mm:ss SSS"));
        System.out.println("getClassSms checkDate===="+checkDate);
        //checkDate="2016-09-10";
        List<ClassTimeChild> classTimeMainList = classTimeChildManager.selectMobileByDay(checkDate);
        for(int i=0;i<classTimeMainList.size();i++){
            ClassTimeChild child =  classTimeMainList.get(i);
            System.out.print(DateUtils.formatDate(child.getClassdatetime(),"hh:mm"));
            SmsSendUtil.sendClassSms(DateUtils.formatDate(child.getClassdatetime(), "hh:mm"), child.getStudent(), child.getClassaddress(), child.getClassname(), child.getMobile());
        }
        System.out.println(toJsonResult(classTimeMainList));
    }



    public void updateClassStatus() {
        String checkDate=DateUtils.formatDate(new Date(),"yyyy-MM-dd HH");
        System.out.println("updateClassStatus====="+ DateUtils.formatDate(new Date(), "HH:mm:ss SSS"));
        System.out.println("updateClassStatus checkDate===="+checkDate);
        //checkDate="2016-09-10 12:30";
        int result  = classTimeChildManager.updateClassStatus(checkDate);
        System.out.println(toJsonResult(result));
    }

    public String toJsonResult(Object rv) {
        String result;
        try {
            result = JsonTools.toJsonStr(rv);
        } catch (Exception e) {
           // logger.error("MyBaseController toJsonResult error:", e);
            result = JsonTools.toJsonStr("");
        }
        return result;
    }
}
