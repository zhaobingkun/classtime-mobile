<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.classtime.mobile.util.ConstantUtil" %>
<%@ page import="com.classtime.mobile.util.CookieUtil" %>
<%@ page import="com.classtime.service.model.Cpsuser" %>
<c:url value="/" var="rootUrl" scope="application"></c:url>
<c:if test="${fn:contains(rootUrl,';')}">
    <c:set value="${fn:split(rootUrl,';')[0] }" var="rootUrl" scope="application"/>
</c:if>
<%
    String imgUrl = ConstantUtil.IMG_URL;
		String pdfUrl = ConstantUtil.DOWNLOAD_URL;
%>
<c:url value="<%=imgUrl%>" var="imgUrl" scope="application"></c:url>
<c:url value="<%=pdfUrl%>" var="pdfUrl" scope="application"></c:url>
<%
    String webappUrl = ConstantUtil.WEBAPP_URL;
%>
<c:url value="<%=webappUrl%>" var="webappUrl" scope="application"></c:url>
<%
    Cpsuser user = CookieUtil.getUserFromCookie(request);
    if (user != null) {
        request.setAttribute("user", user);
    } else {
        user = new Cpsuser();
        request.setAttribute("user", user);
    }
%>
<%
    String webappCookieDomain = ConstantUtil.WEBAPP_COOKIE_DOMAIN;
%>
<c:url value="<%=webappCookieDomain%>" var="webappCookieDomain" scope="application"></c:url>

<%
    String downloadUrl = ConstantUtil.DOWNLOAD_URL;
%>
<c:url value="<%=downloadUrl%>" var="downloadUrl" scope="application"></c:url>