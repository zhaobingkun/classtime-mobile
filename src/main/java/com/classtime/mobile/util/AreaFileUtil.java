package com.classtime.mobile.util;

import com.classtime.service.model.Area;
import com.classtime.service.utils.DateUtils;
import com.classtime.service.utils.FileUtil;

import java.io.File;
import java.util.Date;
import java.util.List;

/**
 * Created by zhaobk on 2015-07-23.
 * 地区文件重写类
 */
public class AreaFileUtil {

    public static void writeAreaFile(List<Area> areaList) {
        if (areaList == null || areaList.size() == 0) return;
        //必须pageEncoding=UTF-8，否则乱码
        String charset = ConstantUtil.WEBAPP_CHARSET;
        StringBuilder sb = new StringBuilder(" <%@ page language=\"java\"  pageEncoding=\"" + charset + "\" %>").append("#");
        sb.append("<div class=\"flotage address\" id=\"address-list\">");
        sb.append("<img src=\"<c:url value=\"/resources/images/flotage-icon.jpg\"/>\" class=\"arrows\" alt=\"\">").append("#");

        for (Area area : areaList) {
            sb.append("<ul>").append("#");
            sb.append("<li class=\"title\">").append(area.getName()).append("</li>").append("#");
            sb.append("<div class=\"address-list-wrap\">").append("#");
            for (Area areatem : area.getListArea()) {
                sb.append("<li><a href=\"javascript:;\" id=\"dest_").append(areatem.getId()).append("\">").
                        append(areatem.getName()).append("</a></li>").append("#");
            }
            sb.append("</div>").append("#");
            sb.append("</ul>").append("#");
        }
        sb.append("</div>");
        //   sb.append("<script src=\"<c:url value=\"/resources/js/area.js\"/>\"></script>");
        String path = ConstantUtil.WEBAPP_ROOT + "/WEB-INF/common";
        String fileFrom = path + "/area.jsp";
        String dateStr = DateUtils.formatDate(new Date(), "yyyyMMddHHmmss");
        String fileTo = path + "/area" + dateStr + ".jsp";
        File file = new File(fileFrom);
        if (file.exists()) {
            FileUtil.copyFile(fileFrom, fileTo);
            try {
                file.delete();
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        }
        FileUtil.writeFileBySplit(fileFrom, sb.toString(), "#");
    }
}
