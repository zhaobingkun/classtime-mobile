<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/common/include.jsp" %>
<!DOCTYPE html>
<html lang="zh"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/base.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/common_o2.1.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/main.css"/>">

    <link rel="stylesheet" href="<c:url value="/resources/style/order.css"/>">

    <script type="text/javascript"
            src="<c:url value="/resources/js/bootstrap-3.3.5-dist/js/jquery-1.10.2.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/resources/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"/>"></script>
    <script type="application/javascript" src="<c:url value="/resources/js/layer/layer.js"/>"></script>
    <script type="application/javascript" src="<c:url value="/resources/js/web/user.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery/jquery.form.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/jquery/jquery.validate.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/datePicker/WdatePicker.js"/>"></script>
    <script src="<c:url value="/resources/js/web/plan.js"/>"></script>
    <meta name="keywords" content="壹点旅行,美国旅游,定制">
    <title>案例故事</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript">
$(function(){
	$("#dropdown-country p").click(function(){
		var ul = $("#dropdown-country ul");
		if(ul.css("display")=="none"){
			ul.slideDown("fast");
		}else{
			ul.slideUp("slow");
		}
	});
	$("#dropdown-country ul li a").click(function(){
		var txt = $(this).text();
		$("#dropdown-country p").html(txt);
		var value = $(this).attr("rel");
		$("#dropdown-country ul").hide();
		//$("#result").html("您选择了"+txt+"，值为："+value);
	});
	
});
</script>
    <script type="text/javascript">
        var planid = 27;
        $(function () {
            var nowdate = new Date();
            //5天后的时间
            var day14date = new Date(nowdate.getTime() + 5 * 86400000);
            var datastr = day14date.format("yyyy MM dd");
            $('#startdate_' + planid).val(datastr);
        });
    </script>
</head>
<body class="home_view v2 simple-header p1 with-new-header">
<div class="shift-with-hiw js-hero pos-rel" style="margin-top: 0px; height:300px; overflow:hidden;">
    <div class="hero__background ban-middle" style="background:url(../../../resources/images/algs-banner.jpg) 50% 50% no-repeat; top:0;">
       <!-- <img height="100%" src="../../resources/images/algs-banner.jpg" width="100%">-->
    </div>
    <!--<div class="page-page-container-full text-center slogan" style=" ">
        <h4 class="text-branding text-jumbo text-contrast space-1" style=" font-size:22px !important; ">这&nbsp;&nbsp;一&nbsp;&nbsp;点&nbsp;&nbsp;，&nbsp;&nbsp;记&nbsp;&nbsp;住&nbsp;&nbsp;最&nbsp;&nbsp;美&nbsp;&nbsp;好&nbsp;&nbsp;的&nbsp;&nbsp;瞬&nbsp;&nbsp;间</h4>
    </div>-->
</div>

<div class="container brand-padding mt50">
    <div class="row">
        <table class="home-infolist2" width="100%">
            <tr>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/dingdnag01.jpg" />
                    <div class="black-box">在洛杉矶明星大道，<br />叮当偶然遇到超级英雄蜘蛛侠，<br />面对偶像，略略羞涩呢。 </div>
                </td>
                <td class="col-sm-4 brand-display">
                	<div class="white-div"></div>
                    <h1 class="fb60">叮当</h1>
                    <h1 class="fb28">第一次<br />长途旅行</h1>
                    <div class="white-div"></div>
                    <p class="mt30">叮当刚五岁，</p>
                    <p>是个聪明敏感的孩子，</p>
                    <p>爱旅行。</p>
                    <p>他的第一次长途旅行就来到了加州。</p>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/dingdnag02.jpg" />
                    <div class="black-box">迪士尼乐园，<br />叮当开始教妈妈看地图，<br />去找他最喜欢的海绵宝宝</div>
                </td>
            </tr>
            <tr>
                <td class="col-sm-4 bg-eee">
                    <h2 class="fb30 color-red">了解更多<br/>美国旅行</h2><br/>
                    <a class="mt50" href="<c:url value="/plan/list2.html"/>">点击查看</a>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/dingdang03.jpg">
                    <div class="black-box">在拉斯维加斯吃完海鲜自助大餐，<br />叮当一回到城堡酒店，就主动吵着去游泳。<br />难道五岁的小朋友已经知道保持身材了吗？</div>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/dingdnag04.jpg">
                    <div class="black-box"> 和爸妈好友的女儿<br />—小爱姐姐在旅途中成了好朋友，<br />叮当第一次学会了照顾女生哦。</div>
                </td>
            </tr>
            <tr>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/jianuo01.jpg" />
                     <div class="black-box">在金沙酒店顶层，<br />嘉诺拍了一张新加坡的夜景，摩天轮多美</div>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/jianuo02.jpg" />
                    <div class="black-box">嘉言最爱的乐高玩具，<br />他可是创作乐高模型的小设计师呢</div>
                </td>
                <td class="col-sm-4 brand-display">
                	<div class="white-div"></div>
                    <h1 class="fb60">嘉诺、嘉言</h1>
                    <h1 class="fb28">新加坡嘉年华</h1>
                    <div class="white-div"></div>
                    <p class="mt30">全家老小到新加坡的短期旅行，</p>
                    <p>嘉诺、嘉言两姐弟喜欢这儿的干净漂亮，</p>
                    <p>彻底撒欢儿。</p>
                </td>
            </tr>
            <tr>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/jianuo03.jpg" />
                    <div class="black-box">旅途最后一晚，自己动手收拾好行李箱，<br />把可爱的海豚带回家 </div>
                </td>
                <td class="col-sm-4 bg-eee">
                    <h2 class="fb30 color-red">了解更多<br/>新加坡旅行</h2><br/>
                    <a class="mt50" href="<c:url value="/plan/list136.html"/>">点击查看</a>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/jianuo04.jpg" />
                    <div class="black-box">城市里的孩子，<br />需要一个可以尽情戏水、尖叫、欢笑的空间</div>
                </td>
            </tr>
            <tr>
                <td class="col-sm-4 brand-display">
                	<div class="white-div"></div>
                    <h1 class="fb60">Liz</h1>
                    <h1 class="fb28">在土耳其的文艺邂逅</h1>
                    <div class="white-div"></div>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/liz01.jpg" />
                    <div class="black-box"> 变形金刚取景地，也被称作“外星人遗留下的最后村庄”，<br />Liz的座驾随地就悠闲地休息上了 </div>
                </td>
                <td class="col-sm-4 bg-eee pos-rel">
                    <img src="../../../resources/images/liz02.jpg" />
                    <div class="black-box">洞穴酒店虽小，五脏俱全，<br />热气球探险归来，游个泳放松下 </div>
                </td>
            </tr>
            <tr>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/liz03.jpg" />
                    <div class="black-box"> 天堂的样子，也许就是在卡帕多奇亚的仙女小屋，<br />花花草草，和一只大狗，一起晒太阳</div>
                </td>
                <td class="col-sm-4 pos-rel">
                    <img src="../../../resources/images/liz04.jpg" />
                    <div class="black-box">老爷爷拿出一张张纯手工无梭编制摊，<br />粗犷外表下的精致美丽让人震撼</div>
                </td>
                <td class="col-sm-4 bg-eee">
                    <h2 class="fb30 color-red">了解更多<br/>土耳其旅行</h2><br/>
                    <a class="mt50" href="<c:url value="/plan/list139.html"/>">点击查看</a>
                </td>
            </tr>
            
        </table>
    </div>
</div>


<!--<div class="raw">
    <div class="booking-block2" id="booking-block2">
        <div id="searchbar" class="mb40 let-us-travel ga-hook">
                	
                    <div class="searchbar" data-reactid=".2">
                    	<div id="dropdown-country" class="fl">
                          <p>您想去的国家?</p>
                          <ul onmouseout="document.getElementById('ul-slideUp').style.display='none'">
                             <li><a href="<c:url value="/plan/list2.html"/>">美国</a></li>
                             <li><a href="<c:url value="/plan/list139.html"/>">土耳其</a></li>
                             <li><a href="<c:url value="/plan/list136.html"/>">新加坡</a></li>
                             <span class="fr mb0 mr10">更多目的地，敬请期待</span>
                          </ul>
                      </div>
                    </div>
                </div>
    </div>
</div>-->
<div class="Chrysanthemum_front" style="position:fixed; top:38%; left:45%; z-index:99;">
    <img width="100" height="100" style="background:none;" src="<c:url value="/resources/images/login-w.GIF"/>"/>
</div>
<div class="Chrysanthemum_shade"></div>

<script type="text/javascript">

    $('.dropdown-menu').click(function (e) {
        e.stopPropagation();
    })

</script>

<script type="text/javascript">
    var planid = 27;
    var personnum = 0;
    var everypersonnumarr = [2];
    var everyhousetypearr = ['double'];
    $(function () {
        var nowdate = new Date();
        //5天后的时间
        var day14date = new Date(nowdate.getTime() + 5 * 86400000);
        var datastr = day14date.format("yyyy MM dd");
        $('#startdate_' + planid).val(datastr);
    });
    function tripCreateJson(planId) {
        var startDate = document.getElementById("startdate_" + planId).value;
        if (startDate == '') {
            alert('请选择时间');
            return;
        }

        var roomnum = $('#roomshuliang' + planId).val();
        var personnum1 = document.getElementById("personnum_" + planId).value;

        $.ajax({
            type: "post",
            url: "/trip/create.json",
            traditional: true, //解决ajax参数传递数组版本太低的问题
            dataType: "json",
            data: {
                adults: everypersonnumarr,
                roomtypes: everyhousetypearr,
                planId: planId,
                startDate: startDate,
                personnum: personnum1,
                roomnum: roomnum
            },
            beforeSend: function (XMLHttpRequest) {
                //这段代码不要了，作废了
                /*layer.msg('正在定制您的行程单，请耐心等待',{
                 icon: 1,
                 time: 200000
                 });*/

                $(".Chrysanthemum_front").css('display', 'block');
                $(".Chrysanthemum_shade").css('display', 'block');
            },
            success: function (data) {
                /*var data11=JSON.stringify(data);
                 alert(data11);*/
                if (data.flag) {
                    var url = '<c:url value="/trip/start.html"/>';
                    url += '?tripid=' + data.trip.id;
                    window.location.href = url;
                } else {
                    alert(data.message);
                }
                $(".Chrysanthemum_front").css('display', 'none');
                $(".Chrysanthemum_shade").css('display', 'none');
            },
            error: function () {
                $(".Chrysanthemum_front").css('display', 'none');
                $(".Chrysanthemum_shade").css('display', 'none');

                alert("行程单定制失败，请重新操作!");
            }
        });
    }
    function choosePersonNum(planId) {
        personnum = 0;
        everypersonnumarr = [];
        everyhousetypearr = [];

        $('.dropdown' + planId + ' .room_container').each(function () {
            var index = $('.dropdown' + planId + ' .room_container').index(this) + 1;
            if (index == 1) {
                var thisradiohousetype = $(".dropdown" + planId + " input[name='housetype" + planId + "']:checked").val();
            } else {
                var thisradiohousetype = $(".dropdown" + planId + " input[name='housetype" + index + "']:checked").val();
            }
            everyhousetypearr.push(thisradiohousetype);

            //var thisnum=parseInt($(this).find('.forAdults .dropdown-label').html().split(' ')[0]);

            var thisnum = parseInt($(this).find("select.chengren  option:selected").text().split(' ')[0]);
            thisnum += parseInt($(this).find("select.ertong  option:selected").text().split(' ')[0]);

            everypersonnumarr.push(thisnum);
            personnum += thisnum;
        })

        document.getElementById("personnum_" + planId).value = personnum;
        document.getElementById("spanpersonnum_" + planId).innerHTML = personnum + "人 ";
    }
</script>
</body>
</html>


