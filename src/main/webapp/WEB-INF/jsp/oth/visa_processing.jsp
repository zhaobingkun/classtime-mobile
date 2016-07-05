<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/common/include.jsp" %>

<html>
<head>
    <title>签证办理</title>
    
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/common_o2.1.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/us.css"/>">
</head>
<body style=" background:#fff !important;">
<div class="shift-with-hiw js-hero" style="margin-top: 0px; height:300px; clear:both; overflow:hidden; position:relative; z-index:1;"">
    <div class="hero__background" data-native-currency="CNY" aria-hidden="true" style="height:300px;">
        <img alt="" height="100%" src="../../../resources/images/website_terms.jpg" width="100%">
    </div>

    <!--<div class="page-container page-container-full text-center mt80" style="z-index:999999">
        <div class="va-container va-container-v va-container-h">
            <div class="va-middle">
                <h2 class="text-branding text-jumbo text-contrast space-1 font32 mt30">
                    旅行，最重要的不是去哪儿，而是和谁去
                </h2>
            </div>
        </div>

    </div>-->


</div>
<div class="content us">
<!--left menu begin-->


<div class="lft">
	<ul>
		<li><a href="${rootUrl}oth/website_terms.html">网站条款</a></li>
        <li><a href="${rootUrl}oth/useprocess.html">使用流程</a></li>
        <!--<li class="hover"><a href="${rootUrl}oth/visa_processing.html">签证办理</a></li>-->
		<li><a href="${rootUrl}oth/common_sense.html">出游常识</a></li>
		<li><a href="${rootUrl}oth/reservation_clause.html">预订条款</a></li>
		<!--<li><a href="${rootUrl}oth/payment_service.html">付款与退款政策</a></li>-->
		<li><a href="${rootUrl}oth/contactus.html">联系我们</a></li>
        
	</ul>
</div>
<script type="text/javascript">
	var namelist = ['aboutus','disclaimer','privacy','terms','payment_service','job','partner','contactus'];
	var url=location.href;
	for(var i=0;i<namelist.length;i++){
		if(url.indexOf(namelist[i]) > 0){
			$('div.lft ul li').eq(i).addClass('hover');
			break;
		}
	}
</script>
<!--left menu end-->
<!--about us begin-->
<div class="rgt">
<!--address begin-->
<div class="clause">
  <div class="text">
   <h3>签证办理</h3><br />

<h3>内容待提供</h3>
</div>
</div>
</div>
<!--about us end-->
<div class="clear"></div>
</div>
</body>

</html>