package com.classtime.mobile.controller;

import com.classtime.mobile.util.CookieUtil;
import com.classtime.mobile.util.SmsSendUtil;
import com.classtime.service.beans.UserModel;
import com.classtime.service.manager.CpsuserManager;
import com.classtime.service.model.Cpsuser;
import com.classtime.service.utils.SecurityUtil;
import com.classtime.service.utils.StringTools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Random;

/**
 * Created by zhaobk on 2015-12-07.
 */
@Controller
@RequestMapping("/user")
public class UserController extends MyBaseController {
    @Autowired
    private CpsuserManager cpsuserManager;

    @RequestMapping("login.html")
    public String login(@RequestParam(value = "location", required = false) String location, Model model) {
        try {
            if (location!=null && !"".equals(location)){//!StringTools.isEmpty(location)) {
                location = URLEncoder.encode(location, "UTF-8");
                model.addAttribute("location", location);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "user/login";
    }

    /**
     * 用户点击登录页面的获取验证码
     */
    @ResponseBody
    @RequestMapping("/getRandomCode.json")
    public String isGetRandomCode(@RequestParam("phone") String phone) throws IOException {
        Cpsuser user = null;
        try {
            user = cpsuserManager.findByPhone(phone);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String result = toJsonResult(0, "", "");
        logger.info("getRandomCode user:" + ((user == null) ? "null" : user.toString()));
        Random random = new Random();
        String randomCode = "";
        for (int i = 0; i < 6; i++) {
            randomCode += random.nextInt(10);
        }
        System.out.println(randomCode);
        if (user == null) {
            user = new Cpsuser();
            user.setRegistertime(new Date());
            user.setRandomcode(randomCode);
            user.setContactphone(phone);
            cpsuserManager.insert(user);
            opLogger.info(StringTools.toLogString(phone, "insert", user));
        } else {
            user.setRandomcode(randomCode);
            user.setUpdatetime(new Date());
            cpsuserManager.update(user);
            opLogger.info(StringTools.toLogString(phone, "update", user));
        }
        //String res = "0";// SmsSendUtil.sendLoginCheck(phone, randomCode);
        String res = SmsSendUtil.sendLoginCheck(phone, randomCode);

        if (res != null && res.equals("0")) {
            result = toJsonResult(1, "", "");
        }

       // System.out.print(toJsonResult(1, "", ""));
        return result;
    }

    /**
     * 已用邮箱登录用户点击登录页面的获取验证码
     */
    @ResponseBody
    @RequestMapping("/getRandomCodeOfLongin.json")
    public String getRandomCodeOfLongin(@RequestParam("phone") String phone, HttpServletRequest request) throws IOException {
        Cpsuser cpsuser = CookieUtil.getUserFromCookie(request);
        String result = toJsonResult(0, "", "");
        Random random = new Random();
        String randomCode = "";
        for (int i = 0; i < 6; i++) {
            randomCode += random.nextInt(10);
        }

        if (cpsuser != null) {//如果用户已经登录  又可以用了。还是配置问题
            /*logger.info("getRandomCodeOfLongin psuser != null " + StringTools.isEmpty(cpsuser.getEmail()));
            if (StringTools.isEmpty(cpsuser.getEmail())) {//如果用户使用手机号码已经登录，更新校验码，还是手机号码不能更改
                cpsuser.setRandomcode(randomCode);
                cpsuser.setUpdatetime(new Date());
                cpsuserManager.update(cpsuser);
                opLogger.info(StringTools.toLogString(phone, "update", cpsuser));
            } else {*/  //如果用户使用邮箱已经登录，更新手机号码和校验码
                cpsuser.setRandomcode(randomCode);
                cpsuser.setUpdatetime(new Date());
                cpsuser.setContactphone(phone);
                cpsuserManager.update(cpsuser);
                opLogger.info(StringTools.toLogString(phone, "update", cpsuser));
           // }

        } else {
            Cpsuser user = null;
            try {
                user = cpsuserManager.findByPhone(phone);
            } catch (Exception e) {
                e.printStackTrace();
            }
            logger.info("getRandomCodeOfLongin getRandomCode user:" + ((user == null) ? "null" : user.toString()));
            if (user == null) {
                user = new Cpsuser();
                user.setRegistertime(new Date());
                user.setRandomcode(randomCode);
                user.setContactphone(phone);
                cpsuserManager.insert(user);
                opLogger.info(StringTools.toLogString(phone, "insert", user));
            } else {
                user.setRandomcode(randomCode);
                user.setUpdatetime(new Date());
                cpsuserManager.update(user);
                opLogger.info(StringTools.toLogString(phone, "update", user));
            }
        }
        //String res = "0";// SmsSendUtil.sendLoginCheck(phone, randomCode);
        String res = SmsSendUtil.sendLoginCheck(phone, randomCode);
        if (res != null && res.equals("0")) {
            result = toJsonResult(1, "", randomCode);
        }
        return result;
    }

    /**
     * 用户输入验证码，和上面保存在数据库中的验证码比对
     */
    @ResponseBody
    @RequestMapping("/loginForPhone.json")
    public String loginOfPhone(@RequestParam("phone") String phone, @RequestParam("randomcode") String randomcode,
                               HttpServletResponse response) throws IOException {
        Cpsuser user = cpsuserManager.findByPhone(phone);

        System.out.println("userid="+user.getId());
        String result = toJsonResult(0, "", "");
        logger.info("loginForPhone user:" + ((user == null) ? "null" : user.toString()));
        if (user != null) {
            if (user.getRandomcode().equals(randomcode)) {//校验码输入正确
                CookieUtil.setUserCookie(response, user, CookieUtil.COOKIE_LIVE_EXPIRY);
                result = toJsonResult(1, "", "");
            } else {
                result = toJsonResult(22, "", "");
            }
        }
        //logger.info("loginOfPhone json end result {}", result);
        return result;
        //return "redirect:/classmanager/classlist.html";
    }


    /**
     * 用户输入验证码，和上面保存在数据库中的验证码比对
     */
    @ResponseBody
    @RequestMapping("/loginForPhoneOfLogin.json")
    public String loginForPhoneOfLogin(@RequestParam("phone") String phone, @RequestParam("randomcode") String randomcode,
                                       HttpServletResponse response, HttpServletRequest request) throws IOException {
        Cpsuser user = getLoginUser(request);//CookieUtil.getUserFromCookie(request);
        if (user == null) {
            user = cpsuserManager.findByPhone(phone);
        } else {
            user = cpsuserManager.selectByPriaryKey(user.getId());
        }
        String result = toJsonResult(0, "", "");
        logger.info("loginForPhone user:" + ((user == null) ? "null" : user.toString()));
        if (user != null) {
            if (user.getRandomcode() != null && user.getRandomcode().equals(randomcode)) {//校验码输入正确
                CookieUtil.setUserCookie(response, user, CookieUtil.COOKIE_LIVE_EXPIRY);
                result = toJsonResult(1, "", "");
            } else {
                result = toJsonResult(22, "", "");
            }
        }
        logger.info("loginOfPhone json end result {}", result);
        return result;
    }

    /**
     * 用户名密码登录
     */
    @ResponseBody
    @RequestMapping("/isEmailPasswdOk.json")
    public String isEmailPassValid(@ModelAttribute UserModel cpsuser,
                                   HttpServletRequest request, HttpServletResponse response) throws IOException {
        logger.info("isNamePassValid: cpsuser " + ((cpsuser == null) ? "null" : cpsuser.toString()));
        String result = toJsonResult(99, "", "");
        if (cpsuser == null) {
            return result;
        }
        String email = cpsuser.getUsername();
        String passwd = cpsuser.getPassword();
        Cpsuser user = cpsuserManager.findByEmail(email);
        result = toJsonResult(0, "", "");
        logger.info("isNamePassValid user:" + ((user == null) ? "null" : user.toString()));
        if (user != null) {
            String modelPass = SecurityUtil.encryptStr(passwd, SecurityUtil.HashType.SHA_1, true);
            logger.info("isNamePassValid passwd is {}  modelPass is:{},get userpasswd {}", passwd, modelPass, user.getPasswd());
            if (user.getPasswd().equals(modelPass)) {
                CookieUtil.setUserCookie(response, user, CookieUtil.COOKIE_LIVE_EXPIRY);
                logger.info("isNamePassValid set session end");
                result = toJsonResult(1, "", "");
            } else {
                result = toJsonResult(22, "", "");
            }
        } else {
            logger.info("use no status");
        }
        logger.info("isNamePassValid json end result {}", result);
        return result;
    }

}