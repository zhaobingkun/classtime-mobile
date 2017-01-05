<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>503服务不可用</title>
    <link rel="stylesheet" type="text/css" href="../../../resources/style/main.css">
  <%--  <script type="text/javascript">
        var num = 6;
        function redirect() {
            num--;
            document.getElementById("num-error").innerHTML = num;
            if (num < 0) {
                document.getElementById("num-error").innerHTML = 0;
                location.href = "/";
            }
        }
        setInterval("redirect()", 1000);
    </script>--%>
</head>

<body>
<div class="whole-error">
    <img src="../../../resources/images/404.jpg"/>

    <div class="mask-error"></div>
</div>
<div class="b-error">


    <p>
        抱歉! 您的页面暂时无法访问，请联系课时笔记客服或稍后访问.......<br>
        <%-- <span id="num-error"></span>秒后自动跳转到主页--%>
    </p>
</div>

</body>
</html>
