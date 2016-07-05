<!DOCTYPE HTML><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0 minimal-ui"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>壹点旅行</title>

</head>
<body> 

<div class="all-elements">
    <%@ include file="/common/header.jsp" %>
    <div id="content" class="snap-content">
    	<div class="header-clear"></div>            
        <div class="content">
        	<div class="portfolio-one full-bottom">
            	<div class="user">订单列表</div>
                <div class="portfolio-one-img full-bottom">
                	<div class="order-number">
                        <a class="float-left" href="#">订单号：1123456789011</a>
                        <span class="float-right">订单状态：<b class="color-red">待付款</b></span>
                    </div>
                    <div class="portfolio-one-image">
                        <img src="../../../resources/images/trip-list01.jpg" onClick="location.href='https://www.baidu.com/'" class="responsive-image">
                    </div>
                  <div class="portfolio-one-text">
                        <h3 class="title">【圣诞特别款】12月21日阿拉斯加极光之旅8天</h3>
                        <em class="subtitle">美国·西雅图  费尔班克斯 </em><br />
                        <h4>
                        	<del class="">RMB&nbsp;18000/人</del>
                        </h4>
                        <h4 class="half-bottom float-left">    
                            RMB&nbsp;10000/人
                        </h4>
                        <i class="float-left icon-ticket">含机票</i>
                    </div>       
                </div>
                <div class="order-form full-bottom mt50">
                    <form>
                    	<input class="blue" type="button" value="订单详情" />
                        <input class="red" type="button" value="确认付款" />
                    </form>
                </div>
            </div>
        </div>
        <%@ include file="/common/footer.jsp" %>
    </div>
</div>
</body>

