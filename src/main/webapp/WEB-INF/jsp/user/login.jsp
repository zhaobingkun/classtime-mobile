<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/common/include.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0 minimal-ui"/>
</head>
<body>
<div class="container">
    <div class="row-offcanvas row-offcanvas-left">
        <div class="loginbox">
            <div class="top">
                <a href="javascript:;" class="on">手机登录</a>
                <a href="javascript:;" class="">邮箱登录</a>
            </div>
            <div class="btm">
                <div class="tour-contact-all">
                    <div class="lista">
                        <span class="name">手机号</span>
                        <input class="phone" id="mobile" maxlength="11" type="text" value="">
                    </div>
                    <div class="lista">
                        <span class="name">验证码</span>
                        <input class="yzm" id="randomcode" type="text" name="text" value="">
                        <a id="randomcodegetbutton" href="javascript:;" onclick="getRandomCode();" class="yzm-btn">发送验证码</a>
                    </div>
                    <div class="clue"></div>
                </div>

                <div class="tour-contact-all" style="display:none">
                    <div class="lista">
                        <span class="name">邮箱</span>
                        <input class="email" id="email" type="text" name="text" value="" placeholder="输入您在pc端注册的邮箱">
                    </div>
                    <div class="lista">
                        <span class="name">密码</span>
                        <input class="mima" id="password" maxlength="11" type="password" value="">
                    </div>
                    <div class="clue"></div>
                </div>
            </div>
            <div class="login-btn">
                <a href="javascript:;"  class="login" id="login-btn">登录</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resources/js/web/user.js"/>"></script>
<script type="application/javascript">
    $("#login-btn").click(function () {
        if ($(".loginbox .top a").first().hasClass("on")) {
            loginForPhone('${location}')
        } else {
            loadUserLogin('${location}');
        }
    })
</script>
</body>

</html>
