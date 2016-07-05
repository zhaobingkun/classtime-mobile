package com.classtime.mobile.util;

import com.classtime.service.mail.MailSenderInfo;
import com.classtime.service.mail.SimpleMailSender;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by zhaobk on 2015-10-19.
 */
public class ClasstimeMailSend {
    protected static Logger logger = LoggerFactory.getLogger(ClasstimeMailSend.class);

    /**
     * 用户注册发送系统邮件（注册成功触发）
     */
    public static void sendRegisterEmail(String sendToAddress) {
        String bodystr = ("<body>\n" +
                "\t<div style=\" width:760px; height:auto; border:1px solid #00bbd6; margin:0 auto; background:#fff;\">\n" +
                "    \t<div style=\"height:52px; background:#00bbd6; padding:0 18px 0 34px;\">\n" +
                "        \t<img style=\"float:left;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/logo-small.png\" />\n" +
                "            <img style=\"float:right;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/400-small.png\" />\n" +
                "        </div>\n" +
                "        <div style=\"padding:50px 18px 50px 34px;\">\n" +
                "        \t<h4>亲爱的壹点旅行会员：</h4>\n" +
                "            <h2>感谢您注册壹点旅行网！</h2>\n" +
                "            <p style=\"margin-top:40px;\">使用壹点旅行网的服务分为以下简单几步：</p>\n" +
                "            <p class=\"color78\">1. 挑选向往的目的地和行程。</p>\n" +
                "            <p class=\"color78\">2. 输入开始日期和人数，获取透明行程安排和预算，并自由调整住宿、交通和景点活动安排。</p>\n" +
                "            <p class=\"color78\">3.一键预订，壹点旅行网会确认您的行程和预算。</p>\n" +
                "            <p class=\"color78\">4. 支付定金，其余交给壹点旅行网。</p>\n" +
                "            <p class=\"color78\">5. 支付尾款，放心出行。</p>\n" +
                "            <p class=\"color32\">现在就开启您“这一点遇见最美好”的旅行定制吧！</p>\n" +
                "            <p style=\"margin-top:100px;\">壹点旅行网     有趣、简单、理性派的旅行定制平台</p>\n" +
                "            <p>完全在线定制，深度当地体验；让我们在这一点遇见最美好！</p>\n" +
                "            <p class=\"color78\">注：此邮件为系统邮件，请勿直接回复</p>\n" +
                "            <p class=\"color78\">如果您有任何疑问或建议，可以通过客服电话: <span class=\"color-blue\">400-0013-078</span> 联系我们&nbsp;&nbsp;联系传真：<span class=\"color-blue\">010-65177557</span></p>\n" +
                "            <div style=\"width:100%; text-align:center; margin-top:50px;\">\n" +
                "            </div>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</body>\n" +
                "\n" +
                "</html>");

        String content = getMailHeader("注册成功邮件") + bodystr;
        String subject = "壹点旅行网-注册成功";

        MailSenderInfo mailInfo = getMailSenderInfo(sendToAddress, subject, content);
        //这个类主要来发送邮件
        SimpleMailSender.sendHtmlMail(mailInfo);//发送html格式
    }

    /**
     * 密码修改发送系统邮件（密码修改触发）
     */
    public static void sendPasswordupEmail(String sendToAddress, String email, String newpasswd) {

        String bodystr = "<body>\n" +
                "\t<div style=\" width:760px; height:auto; border:1px solid #00bbd6; margin:0 auto; background:#fff;\">\n" +
                "    \t<div style=\"height:52px; background:#00bbd6; padding:0 18px 0 34px;\">\n" +
                "        \t<img style=\"float:left;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/logo-small.png\" />\n" +
                "            <img style=\"float:right;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/400-small.png\" />\n" +
                "        </div>\n" +
                "        <div style=\" padding:50px 18px 50px 34px;\">\n" +
                "        \t<h4>亲爱的壹点旅行会员：</h4>\n" +
                "        	  <h2>感谢您使用壹点旅行网！</h2>\n" +
                "            <p>您的账号为：" + email + "，您的新密码为：" + newpasswd + "，请重新登录，并及时修改您的密码。</p>\n" +
                "            <p style=\"margin-top:100px;\">壹点旅行网     有趣、简单、理性派的旅行定制平台</p>\n" +
                "            <p>完全在线定制，深度当地体验；让我们在这一点遇见最美好！</p>\n" +
                "            <p class=\"color78\">注：此邮件为系统邮件，请勿直接回复</p>\n" +
                "            <p class=\"color78\">如果您有任何疑问或建议，可以通过客服电话: <span class=\"color-blue\">400-0013-078</span> 联系我们&nbsp;&nbsp;联系传真：<span class=\"color-blue\">010-65177557</span></p>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        String content = getMailHeader("找回密码邮件") + bodystr;
        String subject = "壹点旅行网-找回密码";

        MailSenderInfo mailInfo = getMailSenderInfo(sendToAddress, subject, content);
        //这个类主要来发送邮件
        SimpleMailSender.sendHtmlMail(mailInfo);//发送html格式
    }

    /**
     * 预订成功发送系统邮件（订单生成触发）
     */
    public static void sendOrderSuccessEmail(String sendToAddress, String orderno, Long tripid) {

        String bodystr = "<body>\n" +
                "\t<div style=\" width:760px; height:auto; border:1px solid #00bbd6; margin:0 auto; background:#fff;\">\n" +
                "    \t<div style=\"height:52px; background:#00bbd6; padding:0 18px 0 34px;\">\n" +
                "        \t<img style=\"float:left;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/logo-small.png\" />\n" +
                "            <img style=\"float:right;\" src=\"" + ConstantUtil.WEBAPP_URL + "/resources/images/400-small.png\" />\n" +
                "        </div>\n" +
                "        <div style=\" padding:50px 18px 50px 34px;\">\n" +
                "        \t<h4>亲爱的壹点旅行会员：</h4>\n" +
                "        	  <h2>感谢您使用壹点旅行网！</h2>\n" +
                "            <p>恭喜您，您的新行程已经预订成功！订单号为：<a href=\"" + ConstantUtil.WEBAPP_URL + "/triporder/orderDetail/" + tripid + ".html\" style=\"font-size:16px; color:#2a8de9; line-height:36px;\">" + orderno + "</a></p>\n" +
                // "            <p>恭喜您，您的新行程已经预订成功！订单号为：" + orderno + "</p>\n" +

                "\t\t\t<p>我们将在一个工作日内为您审核并确认订单。您可以在“我的订单”中查看订单详情和状态。</p>\n" +
                "            <p style=\"margin-top:100px;\">壹点旅行网     有趣、简单、理性派的旅行定制平台</p>\n" +
                "            <p>完全在线定制，深度当地体验；让我们在这一点遇见最美好！</p>\n" +
                "            <p class=\"color78\">注：此邮件为系统邮件，请勿直接回复</p>\n" +
                "            <p class=\"color78\">如果您有任何疑问或建议，可以通过客服电话: <span class=\"color-blue\">400-0013-078</span> 联系我们&nbsp;&nbsp;联系传真：<span class=\"color-blue\">010-65177557</span></p>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</body>\n" +
                "\n" +
                "</html>";
        String content = getMailHeader("预订成功邮件") + bodystr;
        String subject = "壹点旅行网-预订成功";
        MailSenderInfo mailInfo = getMailSenderInfo(sendToAddress, subject, content);
        //这个类主要来发送邮件
        SimpleMailSender.sendHtmlMail(mailInfo);//发送html格式
    }

    public static String getMailHeader(String title) {
        String s = "<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
                "    <title>" + title + "</title>\n" +
                "<style type=\"text/css\">\n" +
                "body{ margin:0; padding:0; font-size:12px;font-family:\"Microsoft Yahei\",\"微软雅黑\", Arial,sans-serif;}\n" +
                "a,span,p{ color:#323232;}\n" +
                "\n" +
                "\n" +
                "ul,li{list-style:none;}\n" +
                "\n" +
                ".color32{ color:#323232;}\n" +
                ".color78{ color:#787878 !important;}\n" +
                ".text-indent{ text-indent:24px;}\n" +
                ".color-blue{ color:#00bbd6 !important;}\n" +
                "</style>\n" +
                "</head>\n";
        return s;
    }

    private static MailSenderInfo getMailSenderInfo(String sendToAddress, String subject, String content) {
        MailSenderInfo mailInfo = new MailSenderInfo();
        mailInfo.setMailServerHost(ConstantUtil.WEBAPP_EMAIL_SMTP);
        mailInfo.setMailServerPort(ConstantUtil.WEBAPP_EMAIL_PORT);
        mailInfo.setValidate(true);
        mailInfo.setUserName("壹点旅行");
        mailInfo.setUserName(ConstantUtil.WEBAPP_EMAIL);
        mailInfo.setPassword(ConstantUtil.WEBAPP_EMAIL_PW);//您的邮箱密码
        mailInfo.setFromAddress(ConstantUtil.WEBAPP_EMAIL);
        mailInfo.setToAddress(sendToAddress);
        mailInfo.setSubject(subject);
        mailInfo.setNick("壹点旅行");
        mailInfo.setContent(content);
        return mailInfo;
    }

    public static void main(String str[]) {
        sendRegisterEmail("zhaobk@ouretripworld.com");
    }
}
