function getRandomCode() {
    var url = "/user/getRandomCode.json";//未登录用户获取随机码


/*    if (loginflag == 'true') {
        url = "/user/getRandomCodeOfLongin.json";//已登录用户获取随机码
    }*/
    var mobile = $("#mobile").val();

   // alert(mobile);

    if (mobile == '') {
        alert('请输入手机号！');
        return false;
    }
    if (!/^1[3|4|5|8]\d{9}$/.test(mobile)) {
        alert('请输入正确格式的手机号！');
        return false;
    }
    $.ajax({
        type: 'post',
        url: url,
        dataType: 'json',
        data: {
            phone: mobile
        },
        beforeSend: function () {
            $("#randomcodegetbutton").removeAttr('onclick');
        },
        success: function (data) {
            console.log(data);
            if (data.rf == '1') {
                var interval = 1000;
                var seconds = 60;//1分钟倒计时显示
                window.setInterval(function () {
                    if (seconds > 0) {
                        seconds = seconds - 1;
                        $("#randomcodegetbutton").removeAttr('onclick');
                        $("#randomcodegetbutton").html(seconds+"秒后重试");
                    } else {
                        $('#randomcodegetbutton').html('获取验证码');
                    }
                }, interval);
            } else {
                alert('验证码发送失败，请重新获取');
                $('#randomcodegetbutton').html('获取验证码');
                $('#randomcodegetbutton').removeAttr("onclick");
            }
        },
        error: function (msg) {

            //console.log('error:' + msg.toString());
           // alert(msg.toString());
            alert('验证码发送失败，请重新操作！');
            $('#randomcodegetbutton').html('获取验证码');
            $('#randomcodegetbutton').removeAttr("onclick");
        }
    });
}
function loginForPhone() {

    var mobile = $("#mobile").val();
    if (mobile == '') {
        alert('请输入手机号！');
        return false;
    }
    if (!/^1[3|4|5|8]\d{9}$/.test(mobile)) {
        alert('请输入正确格式的手机号！');
        return false;
    }
    var randomcode = $("#randomcode").val();
    if (randomcode == '') {
        alert('请输入验证码！');
        return false;
    }
    if (!/^\d{6}$/.test(randomcode)) {
        alert('请输入6位数字的验证码');
        return false;
    }
    $.ajax({
        type: 'post',
        url: "/user/loginForPhone.json",
        dataType: 'json',
        data: {
            phone: mobile,
            randomcode: randomcode
        },
        beforeSend: function () {
            $('.btn-submit').removeAttr("onclick");
            $('.btn-submit').html('登录中，请稍后......');
        },
        success: function (data) {
            console.log(data);
            if (data.rf == '1') {
                window.location.href = "/class/classlist.html";
            } else if (data.rf == '22') {
                alert('验证码输入有误，请重新输入');
                $('.btn-submit').html('登录');
            } else {
                alert('用户登录失败,请重新操作');
                $('.btn-submit').html('登录');
            }
        },
        error: function (msg) {
            console.log('error:' + msg.toString());
            alert('用户登录失败，请重新操作！');
            $('.btn-submit').html('登录');
        }
    });
}
//用户主登录页面校验
function loadUserLogin(location) {
    var username = $("#email").val();
    if (username == '') {
        alert('请输入邮箱！');
        return false;
    }
    if (!/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/.test(username)) {
        alert('请输入正确格式的邮箱！');
        return false;
    }
    var password = $("#password").val();
    if (password == '') {
        alert('请输入密码！');
        return false;
    }
    if (!/^([a-zA-Z0-9]{6,20}$)$/.test(password)) {
        alert('密码长度必须在6到20之间并且为字母或数字组合！');
        return false;
    }
    $.ajax({
        type: 'post',
        url: "/user/isEmailPasswdOk.json",
        dataType: 'json',
        data: {
            username: username,
            password: password
        },
        beforeSend: function () {
            $('.login').removeAttr("onclick");
            $('.login').html('登录中，请稍后......');
        },
        success: function (data) {
            console.log('vali5 success');
            if (data.rf == 1) {
                $('.login').html('登录中，请稍后......');
                window.location.href = decodeURIComponent(location);
            } else if (data.rf == 0) {
                alert('该账户不存在');
            } else if (data.rf = 22) {
                alert('密码不正确');
            } else {
                alert('登录失败，请重新登录！');
            }
            $('.login').html('登录');
        },
        error: function (data) {
            console.log('校验用户名或密码出现错误，请重新操作！' + data);
            alert('用户登录失败，请重新操作！');
            $('.login').html('登录');
        }
    });
}
