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
        	<div class="portfolio-one">
            	<table class="sucess-table">
                	<tr>
                    	<td width="100%" align="center">
                        	<div style="width:auto; height:auto; display:inline-block; margin:0 auto;"><img class="mr20 float-left" src="../../../resources/images/icon-right.png" /><h1 class=" float-left">行程单提交成功</h1></div>
                        </td>
                    </tr>
                    <tr>
                    	<td width="100%">提交订单后，壹点旅行助理将在1个工作日内与您联系，根据各项服务实际情况与您确认。</td>
                    </tr>
                    <tr>
                    	<td width="100%" class="view-orders">
                        	<a href="#">查看订单</a>
                            <span>|</span>
                            <a href="#">返回首页</a>
                        </td>
                    </tr>
                </table>
                <div class="portfolio-one-item full-bottom">
                    <div class="portfolio-one-image">
                        <a href="" class="swipebox" title="">
                            <i class="fa fa-plus"></i>
                        </a>
                        <img src="../../../resources/images/trip-list01.jpg" class="responsive-image">
                    </div>
                  <div class="portfolio-one-text">
                        <h3 class="title">【圣诞特别款】12月21日阿拉斯加极光之旅8天</h3>
                        <em class="subtitle">美国·西雅图  费尔班克斯 </em><br />
                        <h4 class="half-bottom float-left">
                            RMB&nbsp;10000/人
                        </h4>
                        <i class="float-left icon-ticket">含机票</i>
                        
                        <div class="customized">
                            <p class="grey">全程专车：增加所有游玩项目的可选专车服务</p>
                            <p class="grey">壹点推荐：全程以最便捷、最具性价比为目的，并且不排斥公共交通方式来搭配的交通组合</p>
                        </div>
                        <div class="services full-bottom mt10">
                        	<p>当地交通：全程专车</p>
                            <p>签证：代办签证</p>
                            <p>机票：机票自理</p>
                            <p>出行日期：2016年1月1日</p>
                            <p>出行安排：4成人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1儿童&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2x标准间</p>
                            <p>姓名：李林</p>
                        </div>
                    </div>       
                </div>
            </div>
        </div>
        
        <%@ include file="/common/footer.jsp" %>
    </div>
</div>
</div>
<script src="../../../resources/scripts/jquery-1.9.1.min.js"></script>
<script src="../../../resources/scripts/jquery.selectlist.js"></script>
<script type="text/javascript">
	$(function(){
		$('select').selectlist({
			zIndex: 999,
			width: 200,
			height: 40,
			//display : block
		});		
	})
</script>

</body>

