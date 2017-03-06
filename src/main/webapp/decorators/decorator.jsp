<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html><head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no" />
<meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<meta name="keywords" content="课时笔记 课程管理">
<title>课时笔记</title>
<link rel="stylesheet" href="/resources/css/base.css">
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/class.css">
<link href="/resources/css/mobiscroll.custom-2.6.2.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/mobiscroll.custom-2.6.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/popup.js"></script>
<decorator:head/>
</head>

<body>
<%@ include file="/common/header.jsp" %>
<decorator:body/>

<!--版权声明部分开始-->
<%@ include file="/common/footer.jsp" %>
<!--版权声明部分结束-->

<!-- 下面几行js测试时打开，暂时注释dtrip.mobileservice.min.js;修改的js先拷贝到dtripmobileservice.js,
使用http://tool.chinaz.com/js.aspx，先去除注释，再加密压缩，最后拷贝到dtrip.mobileservice.min.js-->

<%--
<script type="text/javascript" src="<c:url value="/resources/js/web/plan.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/web/trip.js"/>"></script>
--%>

</body>
</html>