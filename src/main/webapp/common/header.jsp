<%@ page language="java" pageEncoding="UTF-8" %>
<script type="text/javascript">
    //rootUrl 和usename 必须引入include.jsp使用
    var rootUrl = '${rootUrl}';
    var dtripImgUrl = '${imgUrl}';
    var dtripPdfUrl = '${pdfUrl}';

    function createCookie(name, value, days, domain, path) {
        var expires = '';
        if (days) {
            var d = new Date();
            d.setTime(d.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = '; expires=' + d.toGMTString();
        }
        domain = domain ? '; domain=' + domain : '';
        path = '; path=' + (path ? path : '/');
        document.cookie = name + '=' + value + expires + path + domain;
    }

    function readCookie(name) {
        var n = name + '=';
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var c = cookies[i].replace(/^\s+/, '');
            if (c.indexOf(n) == 0) {
                return c.substring(n.length);
            }
        }
        return null;
    }

    function eraseCookie(name, domain, path) {
        setCookie(name, '', -1, domain, path);
    }
    function logout(domain) {
        createCookie('logon', '', -1, domain, '/');
        window.location.href = '/';
    }
</script>

<nav class="navbar navbar-inverse2 navbar-static-top">
    <div class="container">
    	<div class="btmbg"></div>
        <div class="navbar-header">
            <a class="navbar-brand main-logo" href="/"></a>
            <button type="button" class="navbar-toggle collapsed new_navbar" data-toggle="offcanvas">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
			<span class="addressbtn" data-toggle="offcanvas-rg"></span>
        </div>
        <div id="navbar" class="navbar-collapse navbar-collapse-left">
        	<a href="/" class="pub">首页</a>
        	<a href="tel:4000013078" class="pub phone" >400-0013-078</a>
        	<!--<a href="mqqwpa://im/chat?chat_type=wpa&uin=3386010024 &version=1&src_type=web&web_src=m.etripworld.com" class="pub qq">在线咨询</a>-->
        	<!--<a href="http://wpa.b.qq.com/cgi/wpa.php?ln=2&uin=3386010024" class="pub qq">在线咨询</a>-->
        	<!--<a href="http://wpa.qq.com/msgrd?v=3&uin=3386010024&site=m.etripworld.com&menu=yes" class="pub qq">在线咨询</a>-->
         <a href="http://wpa.qq.com/msgrd?v=3&uin=3386010024&site=qq&menu=yes" class="pub qq">在线咨询</a>
        	
        	
        			   
        	<a href="/triporder/order_center_list" class="pub">我的订单</a>
        	<a href="/oth/activitylist.html" class="pub">活动进行时</a>
        	<a href="/plan/listtag10.html" class="pub">早买赚</a>
        	<div class="list">
        		<h2 class="pub on">从心出发</h2>
        		<a href="/plan/listtag1.html" class="pub">花见</a>
        		<a href="/plan/listtag2.html" class="pub">蜜月</a>
        		<a href="/plan/listtag4.html" class="pub">亲子</a>
        		<a href="/plan/listtag5.html" class="pub">悦食</a>
        		<a href="/plan/listtag9.html" class="pub">行摄</a>
        		<a href="/plan/listtag6.html" class="pub">自然</a>
        		<a href="/plan/listtag7.html" class="pub">放空</a>
        		<a href="/plan/listtag8.html" class="pub">猎奇</a>
        		<a href="/plan/listtag3.html" class="pub">成长</a>
        	</div>
        	<div class="list">
        		<h2 class="pub on">关于我们</h2>
        		<a href="/oth/aboutus.html" class="pub">壹点定制</a>
        		<a href="/oth/contactus.html" class="pub">联系我们</a>
        		<a href="/oth/partner.html" class="pub">合作伙伴</a>
        	</div>
        </div>
        <div id="address" class="navbar-collapse navbar-collapse-right" >
        	<a href="javascript:;" class="pub pubgreen">热门目的地</a>
        	<div class="list">
        		<h2 class="pub on">北美洲</h2>
        		<a href="/plan/list2.html" class="pub">美国</a>
        		<a href="/plan/list188.html" class="pub">加拿大</a>
        	</div>
        	<div class="list">
        		<h2 class="pub on">欧洲</h2>
        		<a href="/plan/list194.html" class="pub">英国</a>
        		<a href="/plan/list176.html" class="pub">法国</a>
        		<a href="/plan/list159.html" class="pub">瑞士</a>
        		<a href="/plan/list213.html" class="pub">西班牙</a>
        		<a href="/plan/list139.html" class="pub">土耳其</a>
        		<a href="/plan/list182.html" class="pub">冰岛</a>
        	</div>
        	<div class="list">
        		<h2 class="pub on">大洋洲</h2>
        		<a href="/plan/list146.html" class="pub">澳大利亚 </a>
        		<a href="/plan/list163.html" class="pub">新西兰</a>
        		<a href="/plan/list174.html" class="pub">斐济</a>
        	</div>
        	<div class="list">
        		<h2 class="pub on">非洲</h2>
        		<a href="/plan/list219.html" class="pub">肯尼亚  </a>
        		<%--<a href="" class="pub">坦桑尼亚 </a>
        		<a href="" class="pub">南非</a>--%>
        	</div>
        	<div class="list">
        		<h2 class="pub on">亚洲</h2>
        		<a href="/plan/list153.html" class="pub">日本  </a>
        		<a href="/plan/list170.html" class="pub">泰国  </a>
        		<a href="/plan/list136.html" class="pub">新加坡 </a>
        		<a href="/plan/list234.html" class="pub">以色列</a>
        	</div>
        <div id="navbar" class="collapse navbar-collapse sidebar-offcanvas">
            <ul class="nav navbar-nav">
                <li><a href="/">首页</a></li>
                <li><a href="#"><img class="mt10" width="95" height="20"/></a>
                </li>
                <li><a href="/triporder/order_center_list">我的订单</a></li>
                <li><a href="/oth/aboutus.html">关于我们</a></li>
                <c:if test="${not empty user.id}">
                    <li><a href="javascript:logout('${webappCookieDomain}');">退出</a></li>
                </c:if>
            </ul>
        </div>

    </div>
</nav>
