package com.classtime.mobile.util;

import com.classtime.service.utils.StringTools;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by zhaobk on 2015-12-07.
 * 阿里大鱼短信下发工具类
 */
public class SmsSendUtil {
    //正式环境需要设置为:http://gw.api.taobao.com/router/rest
    protected static String url = "http://gw.api.taobao.com/router/rest";
    protected static String appkey = "23400690";
    protected static String appSecret = "43da16601a85ff17138f1e912b108ec5";
    protected static Logger opLogger = LoggerFactory.getLogger("oplog");

    public static String sendLoginCheck(String mobile, String randomcode) {
        try {
            TaobaoClient client = new DefaultTaobaoClient(url, appkey, appSecret);
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.setExtend("");
            req.setSmsType("normal");
            req.setSmsFreeSignName("课时笔记");//签名

            String smsParamString = "{\"code\":\"" + randomcode + "\"}";
            req.setSmsParamString(smsParamString);//短信模版内容
            req.setRecNum(mobile);
            req.setSmsTemplateCode("SMS_11065578");//短信模版编码
            AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
            opLogger.info(StringTools.toLogString("SMS_11065578|sendSMSSuccess", mobile, rsp.getBody()));

            System.out.println(rsp.getResult().getErrCode());
            //return "0";
            return rsp.getResult().getErrCode();
        } catch (Exception e) {
            opLogger.info(StringTools.toLogString("SMS_11065578|sendSMSError", mobile, e.toString()));
            e.printStackTrace();
        }
        return "";
    }


    /*
    public static String sendWandaSms(String mobile, String randomcode) {
        try {
            TaobaoClient client = new DefaultTaobaoClient(url, appkey, appSecret);
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.setExtend("");
            req.setSmsType("normal");
            req.setSmsFreeSignName("壹点旅行");//签名
            String smsParamString = "{\"code\":\"" + randomcode + "\"}";
            req.setSmsParamString(smsParamString);//短信模版内容
            req.setRecNum(mobile);
            req.setSmsTemplateCode("SMS_7430998");//短信模版编码
            AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
            opLogger.info(StringTools.toLogString("SMS_7430998|sendSMSSuccess", mobile, rsp.getBody()));
            return rsp.getResult().getErrCode();
        } catch (Exception e) {
            opLogger.info(StringTools.toLogString("SMS_7430998|sendSMSError", mobile, e.toString()));
            e.printStackTrace();
        }
        return "";
    }

    *//**
     * 用户提交订单时发送短信提醒
     *
     * @param product 产品名称
     * @param name    联系人名称
     *//*
    public static String sendNewTripSms(String product, String name) {
        String mobile = "13910557793";
        try {
            Date date = new Date();
            String dateStr = DateUtils.formatDate(date, "yyyy.MM.dd hh:mm:ss");
            TaobaoClient client = new DefaultTaobaoClient(url, appkey, appSecret);
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.setExtend("");
            req.setSmsType("normal");
            req.setSmsFreeSignName("壹点旅行");//签名
            String smsParamString = "{\"time\":\"" + dateStr + "\",\"name\":\"" + name + "\",\"code\":\"" + product + "\"}";
            req.setSmsParamString(smsParamString);//短信模版内容
            req.setRecNum(mobile);
            req.setSmsTemplateCode("SMS_8280034");//短信模版编码
            AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
            opLogger.info(StringTools.toLogString("SMS_8280034|sendSMSSuccess", mobile, rsp.getBody()));
            return rsp.getResult().getErrCode();
        } catch (Exception e) {
            opLogger.info(StringTools.toLogString("SMS_8280034|sendSMSError", mobile, e.toString()));
            e.printStackTrace();
        }
        return "";
    }
*/
    public static void main(String sr[]) {
        String mobile = "13146485726";
        SmsSendUtil.sendLoginCheck(mobile, "123456");
    }
}
