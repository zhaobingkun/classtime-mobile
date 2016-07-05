<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<head>

<title>登录</title>

</head>

<body>
<div class="login-wrap">
	<div class="inner">
    	<h1>课程管理登录</h1>
        <ul class="inputs-ul-login">
        	<li class="phone-li">
				<input type="text" class="i-txt" id="phone" placeholder="手机">
            </li>
        	<li class="check-code-li">
				<input type="text" class="i-txt" id="check-code" placeholder="验证码" >
                <!--<a href="" class="btn-checkcode">获取验证码</a>-->
                <a href="" class="btn-checkcode btn-grey">剩余50秒</a>
            </li>
            <li class="btm-btn">
            	<a href="classlist.jsp" class="btn-submit">登录</a>
            </li>
        </ul>
        
    </div>
</div>
</body>
</html>
