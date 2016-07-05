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
                <div class="portfolio-one-item full-bottom">
                	<div class="user">
                    	用户登录
                    </div>
                  		<div class="wrap">
                            <div class="tabs">
                                <a href="#" hidefocus="true" class="active">手机号</a>
                                <a href="#" hidefocus="true">已绑定的邮箱号</a>
                            </div>    
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                      <table class="contact-info" width="100%">
                                        <!--<tr>
                                            <td width="20%">姓名</td>
                                            <td width="45%" class="grey" colspan="2"><input type="text" placeholder="请输入您的真实姓名" /></td>
                                        </tr>-->
                                        <tr>
                                            <td width="25%">手机号</td>
                                            <td width="40%" colspan="2"><input type="text" placeholder="15811009988" /></td>
                                        </tr>
                                        <tr>
                                            <td width="20%">验证码</td>
                                            <td width="45%" ><input type="text" placeholder="3098" /></td>
                                            <td width="35%">
                                                <input style=" width:100%;"  class="float-right verification-input" type="submit" value="发送验证码" /></td>
                                            </tr>
                                    </table>
                                  </div>
                                <div class="swiper-slide">
                                     <table class="contact-info" width="100%">
                                        <tr>
                                            <td width="20%">邮箱</td>
                                            <td width="45%" class="grey" colspan="2"><input type="text" placeholder="输入您在电脑客户端注册的邮箱" /></td>
                                        </tr>
                                        <tr>
                                            <td width="20%">密码</td>
                                            <td width="45%" colspan="2"><input type="text" placeholder="" /></td>
                                        </tr>
                                    </table>
                                  </div>
                              </div>
                           </div>
                        </div>
                        <div>
                        	<input class="login" type="submit" value="登陆" />
                        </div> 
                </div>
            </div>
        </div>
        
        <%@ include file="/common/footer.jsp" %>
    </div>
     
    
    
</div>
</div>
<script src="<c:url value="/resources/js/web/idangerous.swiper.min.js"/>"></script>
<script>
var tabsSwiper = new Swiper('.swiper-container',{
	speed:500,
	onSlideChangeStart: function(){
		$(".tabs .active").removeClass('active');
		$(".tabs a").eq(tabsSwiper.activeIndex).addClass('active');
	}
});

$(".tabs a").on('touchstart mousedown',function(e){
	e.preventDefault()
	$(".tabs .active").removeClass('active');
	$(this).addClass('active');
	tabsSwiper.swipeTo($(this).index());
});

$(".tabs a").click(function(e){
	e.preventDefault();
});
</script>

</body>

