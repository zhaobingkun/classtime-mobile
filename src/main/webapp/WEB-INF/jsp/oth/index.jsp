<!DOCTYPE HTML><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0 minimal-ui"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<title>壹点旅行</title>

</head>
<body> 

<div id="preloader">
	<div id="status">
    	<p class="center-text">
			页面加载中…
        </p>
    </div>
</div>
    
       
<div class="all-elements">
    <%@ include file="/common/header.jsp" %>
    <div id="content" class="snap-content">        
        <div class="header-clear"></div>
        <div class="home-banner full-bottom"><img src="../../../resources/images/home-banner01.jpg" /></div>
        <div class="hot-title">
                    <a href="${rootUrl}oth/activity.html">
            	<img src="../../resources/images/amazonbanner.jpg"/>
           	</a>
                </div>
        <div class="hot-title">
        	<h1>当季热卖</h1>
        </div>
 		<div class="portfolio-two">
            <div class="portfolio-two-item full-bottom">
                <div class="portfolio-two-image">
                    <a href="graphic-details.html" class="swipebox">
                    </a>
                    <img src="../../../resources/images/listtwo01.jpg" class="responsive-image">
                </div>
                <div class="portfolio-two-text">
                    <h3 class="title">夏威夷欧胡岛大岛双岛爱恋之旅</h3>
                    <em class="subtitle">美国·夏威夷</em>
                    <h4 class="half-bottom">
                        RMB10000/人
                    </h4>            
                </div>       
            </div>
            <div class="portfolio-two-item full-bottom">
                <div class="portfolio-two-image">
                    <a href="graphic-details.html" class="swipebox">
                    </a>
                    <img src="../../../resources/images/listtwo02.jpg" class="responsive-image">
                </div>
                <div class="portfolio-two-text">
                    <h3 class="title">【春节特别款】2月9日阿拉斯加-圣地亚哥 冰火两重</h3>
                    <em class="subtitle">日本·九州</em>
                    <h4 class="half-bottom">
                        RMB10000/人
                    </h4>              
                </div>       
            </div>
        </div>
        <div class="hot-title">
        	<h1>热门目的地</h1>
        </div>
        <div class="portfolio-wide full-bottom">
            <a href="triplist.html" class="swipebox portfolio-wide-item" title="美国">
                <img class="responsive-image" src="../../../resources/images/list01.jpg" alt="img">
            </a>
            <a href="triplist.html" class="swipebox portfolio-wide-item" title="日本">
                <img class="responsive-image" src="../../../resources/images/list02.jpg" alt="img">
            </a>
            <a href="triplist.html" class="swipebox portfolio-wide-item color-black" title="瑞士">
                <img class="responsive-image" src="../../../resources/images/list03.jpg" alt="img">
            </a>
            <a href="triplist.html" class="swipebox portfolio-wide-item color-black" title="澳大利亚">
                <img class="responsive-image" src="../../../resources/images/list04.jpg" alt="img">
            </a>
            <a href="triplist.html" class="swipebox portfolio-wide-item" title="新加坡">
                <img class="responsive-image" src="../../../resources/images/list05.jpg" alt="img">
            </a>
            <a href="triplist.html" class="swipebox portfolio-wide-item" title="土耳其">
                <img class="responsive-image" src="../../../resources/images/list06.jpg" alt="img">
            </a>
        </div>
        <div class="hot-title full-bottom">
        	<!--<input class="more-button" type="button" value="更多目的地" />-->
            <img width="12" height="20" src="../../../resources/images/more.png">
            <span>更多目的地敬请期待</span>
            
        </div>
         <%@ include file="/common/footer.jsp" %>  
        
    </div>
</div>

</body>

