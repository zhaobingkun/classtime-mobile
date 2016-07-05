<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<body>
<div class="login-wrap">
	<div class="inner">
    	<h1>课程管理登录</h1>
        <ul class="inputs-ul-login">
        	<li class="phone-li">
				<input type="text" class="i-txt"  id="mobile" placeholder="手机">
            </li>
        	<li class="check-code-li">
				<input type="text" class="i-txt" id="randomcode"  placeholder="验证码" >
                <!--<a href="" class="btn-checkcode">获取验证码</a>-->
                <a href="javascript:;" id="randomcodegetbutton"  onclick="getRandomCode();" class="btn-checkcode btn-grey">获取验证码</a>
            </li>
            <li class="btm-btn">
            	<a href="javascript:;"  class="btn-submit" onClick="loginForPhone();">登录</a>
            </li>
        </ul>
        
    </div>
</div>
<script type="text/javascript" src="/resources/js/user.js"></script>
</body>
</html>
