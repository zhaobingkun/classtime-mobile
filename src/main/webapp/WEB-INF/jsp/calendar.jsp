<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<head>
    <title>课时笔记</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/resources/static/css/main.css">
    <link rel="stylesheet" href="/resources/static/css/plugin/minical.css">
    <link rel="stylesheet" href="/resources/static/css/plugin/calendar.css">
    <link rel="stylesheet" href="/resources/static/css/plugin/dailog.css">
</head>
<body>
<div id="mainpanel">
    <div id="toppanel">
        <div id="errorpannel">error消息</div>
        <p class="logo">课时笔记</p>
        <div class="calbtnp1">
            <button id="todaybtn" type="button" class="btn">今天</button>
            <div class="btngroup">
                <span id="prevbtn" type="button" class="btn prevbtn"><em></em></span>
                <span id="nextbtn" type="button" class="btn nextbtn"><em></em></span>
            </div>
            <div id="dateshow"></div>
        </div>
    </div>
    <div id="rightpanel">
        <div id="xgcalendarp">
        </div>

    </div>
</div>
<script type="text/javascript" src="/resources/static/js/locales/zh-cn.js"></script>
<script type="text/javascript" src="/resources/static/js/sea.js"></script>
<script type="text/javascript" src="/resources/static/js/seaconfig.js">  </script>
<script type="text/javascript">
    var loadingmsg = 'loadingmsg';
    var sucessmsg = 'sucessmsg';
    var processdatamsg = 'processdatamsg';
    seajs.use('page/index', function(app) {
        app.init();
    });
</script>

</body>

</html>