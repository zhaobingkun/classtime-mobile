package com.classtime.mobile.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Date;

/**
 * Created by zhaobk on 2015-07-23.
 * 应用初始化时逻辑处理，重写地区面板文件
 */
public class ContextListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("\n\n**************************************************************");
        System.out.println("                  dtrip start at " + new Date());
        System.out.println("**************************************************************");

    /*    AreaManager areaManager = (AreaManager) ServiceLocator.getBean("areaManager");
        List<Area> areaList = areaManager.findByPrivateId(1l);
        AreaFileUtil.writeAreaFile(areaList);*/
        System.out.println("********************ContextListener init area file ok********************");
        contextInitialized();
    }

    private void contextInitialized() {
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        try {
            stop();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(" >>>>>>> service dtrip stoped <<<<<<<<<<<<");
    }

    private void stop() {
        contextDestroyed();
    }

    private void contextDestroyed() {
        System.out.println("\n**************************************************************");
        System.out.println("****************dtrip shutdown****************");
        System.out.println("**************************************************************");
        System.out.println("shut down time:" + new Date());
     //   System.exit(0);
    }
}
