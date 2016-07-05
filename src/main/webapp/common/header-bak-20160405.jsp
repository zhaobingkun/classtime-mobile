<%@ page language="java" pageEncoding="UTF-8" %>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?97d5c5ec425cc9fcb164ee7e7c9a64c5";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript">
    //rootUrl 和usename 必须引入include.jsp使用
    var rootUrl = '${rootUrl}';
    var dtripImgUrl = '${imgUrl}';
    var dtripPdfUrl = '${pdfUrl}';

    function createCookie(name, value, days, domain, path) {
        var expires = '';
        if (days) {
            var d = new Date();
            d.setTime(d.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = '; expires=' + d.toGMTString();
        }
        domain = domain ? '; domain=' + domain : '';
        path = '; path=' + (path ? path : '/');
        document.cookie = name + '=' + value + expires + path + domain;
    }

    function readCookie(name) {
        var n = name + '=';
        var cookies = document.cookie.split(';');
        for (var i = 0; i < cookies.length; i++) {
            var c = cookies[i].replace(/^\s+/, '');
            if (c.indexOf(n) == 0) {
                return c.substring(n.length);
            }
        }
        return null;
    }

    function eraseCookie(name, domain, path) {
        setCookie(name, '', -1, domain, path);
    }
    function logout(domain) {
        createCookie('logon', '', -1, domain, '/');
        window.location.href = '/';
    }
</script>
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand main-logo" href="/"></a>
            <button type="button" class="navbar-toggle collapsed pull-right" data-toggle="offcanvas">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <div id="navbar" class="collapse navbar-collapse sidebar-offcanvas">
            <ul class="nav navbar-nav">
                <li><a href="/">首页</a></li>
                <li><a href="#"><img class="mt10" src="../resources/images/menu400.png" width="95" height="20"/></a>
                </li>
                <li><a href="/triporder/order_center_list">我的订单</a></li>
                <li><a href="/oth/aboutus.html">关于我们</a></li>
                <c:if test="${not empty user.id}">
                    <li><a href="javascript:logout('${webappCookieDomain}');">退出</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
