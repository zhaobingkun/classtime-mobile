<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/include.jsp" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<script type="text/javascript">// <![CDATA[
$(document).ready(function()
{ 
 $("#maincontent img").attr("width","100%");
 $("#maincontent img").attr("height","100%");
});
// ]]>
</script>
</head>
<body>
<div class="container">

	<div id="maincontent">
		<img  src="/resources/images/active001.jpg">
		
	</div>
		<div id="maincontent">
		<img  src="/resources/images/active002.jpg">
		
	</div>
		<div id="maincontent">
		<img onClick="planService.tripCreateJson('77','2')"   src="/resources/images/active003.jpg">
		
	</div>
		<!--<div id="maincontent">
		<img  src="/resources/images/active004.jpg">
		
	</div>-->
	
</div>

</body>

