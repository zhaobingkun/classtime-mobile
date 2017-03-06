<%@ page language="java" pageEncoding="UTF-8" %>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?c0ce563c8f92fe23f6c80cb030b87266";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript">
    //rootUrl 和usename 必须引入include.jsp使用
    var rootUrl = '${rootUrl}';
    var imgUrl = '${imgUrl}';
        alert(rootUrl);
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

<nav>

</nav>
