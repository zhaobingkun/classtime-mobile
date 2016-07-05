<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/common/include.jsp" %>
<html lang="zh"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/base.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/common_o2.1.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/main.css"/>">

    <link rel="stylesheet" href="<c:url value="/resources/style/order.css"/>">
    <script src="<c:url value="/resources/js/datePicker/WdatePicker.js"/>"></script>
    <script src="<c:url value="/resources/js/web/plan.js"/>"></script>
    <meta name="keywords" content="壹点旅行,美国旅游,定制">
    <title>壹点旅行:目的地,主题旅行,定制化,当地人</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript">
        $(function () {
            $("#dropdown-country p").click(function () {
                var ul = $("#dropdown-country ul");
                if (ul.css("display") == "none") {
                    ul.slideDown("fast");
                } else {
                    ul.slideUp("slow");
                }
            });
            $("#dropdown-country ul li a").click(function () {
                var txt = $(this).text();
                $("#dropdown-country p").html(txt);
                var value = $(this).attr("rel");
                $("#dropdown-country ul").hide();
            });

        });
    </script>
</head>
<body class="home_view v2 simple-header p1 with-new-header">


<div class="shift-with-hiw js-hero pos-rel"
     style="margin-top: 0px; height:300px; clear:both; overflow:hidden;">
<div class="hero__background ban-middle" style="background:url(../../../resources/images/subjecttravel-banner.jpg) 50% 50% no-repeat;">
    <!--<img alt="" height="100%" src="../../../resources/images/subjecttravel-banner.jpg" width="100%">-->
</div>

<!--<div class="page-container page-container-full text-center mt80" style="z-index:999999">
    <div class="va-container va-container-v va-container-h">
        <div class="va-middle">
            <h2 class="text-branding text-jumbo text-contrast space-1 mt30" style="font-size:22px;">
                旅行，最重要的不是去哪儿，而是和谁去
            </h2>

        </div>
    </div>

</div>-->


</div>


<div class="container brand-padding">
    <div class="row">
        <div class="col-sm-12">
            <img src="../../../resources/images/yiqilx.jpg" usemap="#Map"/>
            <map name="Map">
                <area shape="rect" coords="25,40,177,172" href="#hhzyq" target="_top">
                <area shape="rect" coords="320,44,501,161" href="#haryq" target="_top">
                <area shape="rect" coords="615,53,828,167" href="#hpyyq" target="_top">
                <area shape="rect" coords="937,47,1130,176" href="#hfmyq" target="_top">
            </map>
        </div>

    </div>
    <div class="row" id="hhzyq">
        <div class="col-sm-12">
            <img src="../../../resources/images/hhzyq.jpg" />
        </div>
        <div class="col-sm-12 mt20">
            <div class="line-route">
                <div class="col-sm-7 pos-rel">
                    <img src="../../resources/images/line-route.jpg">

                    <div class="city-line">
                        <span>美西</span></div>
                </div>
                <div class="col-sm-5 pos-rel row" style="padding-left:20px !important;">
                    <h3 class="fb22 color-red">上天下海，走进好莱坞大片—美西梦想之旅</h3>

                    <p class="margin20"><span>洛杉矶—圣地亚哥—拉斯维加斯</span></p>

                    <p class="font_bold">壹点观点</p>

                    <div class="apoint">
                        <p>第一次美国旅行，去哪里？“壹点旅行”推荐，美西地区作为首选方案。因为这里一年四季都适宜旅行，随时可以前往，民风友善热情，初次到访也没有压力。
                            行程方案的风格偏向舒适自由，可以走走停停，像当地人一样生活，也有时间拜访亲友。途中每到一地，都可以感受不同角度的美国：</p>

                        <p>洛杉矶——娱乐王国好莱坞和各大主题公园，一定不可错过：当地农夫市场；
                            圣地亚哥——无敌海景，享受慢生活，一定不可错过：与鲸鲨共进晚餐；</p>

                        <p>拉斯维加斯——尽情玩乐，大开眼界，一定不可错过：鬼斧神工的大峡谷，如梦似幻的太阳马戏团O show。 </p>
                    </div>
                    <div style="padding-top: 20px;">
                        <div class="col-sm-4">
                            <div class="data-height">开始日期</div>
                            <div class="form-group has-feedback btn-default" style=" height:40px; overflow:hidden;">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_27"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>
                        </div>
                        <div class="col-sm-4 ml10">
                            <div class="data-height">人数</div>
                            <div class="form-group btn-default" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">

                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_27">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_27" value="2"/>

                                    <ul class="dropdown-menu dropdown27">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang27" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">

                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype27" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype27" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn27"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'27');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('27');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 ml20">
                            <div class="form-group start_plan mt25">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('27')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="col-sm-6 mt20">
                        <img src="../../../resources/images/md001.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_28"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_28">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_28" value="2"/>
                                    <ul class="dropdown-menu dropdown28">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang28" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype28" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype28" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn28"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,28);">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('28');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('28')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mt20" style=" text-align:right;">
                        <img src="../../../resources/images/md002.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40 ml8">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_26"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:0px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_26">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_26" value="2"/>
                                    <ul class="dropdown-menu dropdown26">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang26" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype26" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype26" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn26"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,26);">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('26');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('26')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt50" id="haryq">
        <div class="col-sm-12">
            <img src="../../../resources/images/haryq.jpg"/>
        </div>
        <div class="col-sm-12 mt20">
            <div class="line-route">
                <div class="col-sm-7 pos-rel">
                    <img src="../../resources/images/lineroute02.jpg">

                    <div class="city-line">
                        <span>夏威夷</span></div>
                </div>
                <div class="col-sm-5 pos-rel row" style="padding-left:20px !important;">
                    <h3 class="fb22 color-red font_bold">初恋五十次@夏威夷</h3>

                    <p class="margin20"><span>欧胡岛</span></p>

                    <p class="font_bold">壹点观点</p>

                    <div class="apoint">
                        <p>
                            夏威夷是浪漫的代名词，每一对情侣的梦想度假地。不止是阳光沙滩和碧海蓝天，还有热情的草裙舞和好客的阿罗哈精神。去夏威夷旅行无需考虑季节问题，因为这里终年适合游玩，即便是夏季的最高气温也只有29.4℃
                            。浮潜，雨林漫步，夕阳晚餐……你会有N种不同的方式玩浪漫，每一种都像初恋。</p>
                    </div>
                    <div style="padding-top: 20px;">
                        <div class="col-sm-4">
                            <div class="data-height">开始日期</div>
                            <div class="form-group has-feedback btn-default" style=" height:40px; overflow:hidden;">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_30"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>
                        </div>
                        <div class="col-sm-4 ml10">
                            <div class="data-height">人数</div>
                            <div class="form-group btn-default" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">

                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_30">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_30" value="2"/>

                                    <ul class="dropdown-menu dropdown30">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang30" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">

                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype30" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype30" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn27"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'30');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('30');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 ml20">
                            <div class="form-group start_plan mt25">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('30')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="col-sm-6 mt20">
                        <img src="../../../resources/images/md003.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_31"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_31">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_31" value="2"/>
                                    <ul class="dropdown-menu dropdown31">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang31" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype31" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype31" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn31"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'31');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('31');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('31')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mt20" style=" text-align:right;">
                        <img src="../../../resources/images/md004.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40 ml8">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_43"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:0px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_43">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_43" value="2"/>
                                    <ul class="dropdown-menu dropdown43">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang43" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype43" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype43" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn43"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'43');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('43');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('43')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt50" id="hpyyq">
        <div class="col-sm-12">
            <img src="../../../resources/images/hpyyq.jpg"/>
        </div>
        <div class="col-sm-12 mt20">
            <div class="line-route">
                <div class="col-sm-7 pos-rel">
                    <img src="../../resources/images/lineroute03.jpg">

                    <div class="city-line">
                        <span>美东</span></div>
                </div>
                <div class="col-sm-5 pos-rel row" style="padding-left:20px !important;">
                    <h3 class="fb22 color-red font_bold">娱乐至上，四季艳阳下的悠然假期</h3>

                    <p class="margin20"><span>奥兰多—迈阿密—纽约</span></p>

                    <p class="font_bold">壹点观点</p>

                    <div class="apoint">
                        <p>
                            沐浴佛罗里达灿烂的阳光，享受彻底自由自在的假期：在海滩做瑜伽、看海豹，做一天纽约客在中央公园漫步，跟着时尚买手幕后购物，甚至学习驾驶飞机俯瞰纽约。世上唯一的迪士尼世界，世上第一个哈利波特魔法世界，在肯尼迪宇航中心与宇航员会面，这是儿童梦想开始的地方，也是大人圆梦的地方。
                            这一程，一切都为了放松和娱乐，带着满满的灵感和电力归来。</p>
                    </div>
                    <div style="padding-top: 20px;">
                        <div class="col-sm-4">
                            <div class="data-height">开始日期</div>
                            <div class="form-group has-feedback btn-default" style=" height:40px; overflow:hidden;">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_26A1"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>
                        </div>
                        <div class="col-sm-4 ml10">
                            <div class="data-height">人数</div>
                            <div class="form-group btn-default" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">

                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_26A1">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_26A1" value="2"/>

                                    <ul class="dropdown-menu dropdown26A1">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang26A1" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">

                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype26A1" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype26A1" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn26_1"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'26A1');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('26A1');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 ml20">
                            <div class="form-group start_plan mt25">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('26A1')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="col-sm-6 mt20">
                        <img src="../../../resources/images/md005.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_27A1"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_27A1">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_27A1" value="2"/>
                                    <ul class="dropdown-menu dropdown27A1">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang27A1" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype27A1" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype27A1" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn27#1"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'27A1');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('27A1');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('27#1')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mt20" style=" text-align:right;">
                        <img src="../../../resources/images/md006.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40 ml8">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_43A1"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:0px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_43A1">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_43A1" value="2"/>
                                    <ul class="dropdown-menu dropdown43A1">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang43A1" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype43A1" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype43A1" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn43A1"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'43A1');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('43A1');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('43A1')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt50" id="hfmyq">
        <div class="col-sm-12">
            <img src="../../../resources/images/hfmyq.jpg"/>
        </div>
        <div class="col-sm-12 mt20">
            <div class="line-route">
                <div class="col-sm-7 pos-rel">
                    <img src="../../resources/images/lineroute04.jpg">

                    <div class="city-line">
                        <span>美东</span></div>
                </div>
                <div class="col-sm-5 pos-rel row" style="padding-left:20px !important;">
                    <h3 class="fb22 color-red font_bold">了解美国文化，从这里开始</h3>

                    <p class="margin20"><span>波士顿—纽约—华盛顿</span></p>

                    <p class="font_bold">壹点观点</p>

                    <div class="apoint">
                        <p>
                            谁说美国没文化？那一定是没去过美国东部。这一趟旅程，将见证美国的诞生和繁荣，了解一个真实的美国：进入美国常青藤高校，校友分享名校经历和趣事，大都会博物馆奇妙体验，欣赏百老汇音乐剧，中央公园感受纽约日常生活，登顶帝国大厦，按照”纸牌屋“路线了解美国政治……感受美国多元文化的碰撞和融合。</p>
                    </div>
                    <div style="padding-top: 20px;">
                        <div class="col-sm-4">
                            <div class="data-height">开始日期</div>
                            <div class="form-group has-feedback btn-default" style=" height:40px; overflow:hidden;">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_28A1"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>
                        </div>
                        <div class="col-sm-4 ml10">
                            <div class="data-height">人数</div>
                            <div class="form-group btn-default" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">

                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_28A1">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_28A1" value="2"/>

                                    <ul class="dropdown-menu dropdown28A1">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang28A1" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">

                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype28A1" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype28A1" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn28A1"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'28A1');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('28A1');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 ml20">
                            <div class="form-group start_plan mt25">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('28A1')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="col-sm-6 mt20">
                        <img src="../../../resources/images/md007.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_34"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:100px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_34">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_34" value="2"/>
                                    <ul class="dropdown-menu dropdown34">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang34" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype34" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype34" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn34"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'34');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('34');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('34')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mt20" style=" text-align:right;">
                        <img src="../../../resources/images/md008.jpg"/>

                        <div class="col-sm-12 mt20">
                            <div class="data-height fl line40 ml8">开始日期</div>
                            <div class="form-group has-feedback btn-default fl data-style">
                                <input type="text" name=""
                                       style=" border-radius: 0px !important;background:#fff;"
                                       class="form-control startDate cursor_pointer fl" id="startdate_23"
                                       onclick="WdatePicker({dateFmt:'yyyy MM dd',minDate:'%y-%M-{%d+1}'})"/>
                                <span class="glyphicon glyphicon-calendar form-control-feedback"
                                      style="padding-top: 2px;position:relative;left:0px;top:-26px;"></span>
                            </div>

                            <div class="data-height line40 fl ml10">人数</div>
                            <div class="form-group btn-default fl" style="cursor: pointer;">
                                <div class="btn-group travelers_out dropdown"
                                     style="width: 100%; height:40px; line-height:40px;">
                                    <div type="button" class="btn btn-default dropdown-toggle travelers"
                                         style="width: 100%; height:40px; line-height:25px;"
                                         data-toggle="dropdown">
                                        <span class="dropdown-label mr10" id="spanpersonnum_23">2人 1x大床房</span><span
                                            class="caret"></span>
                                    </div>
                                    <input type="hidden" id="personnum_23" value="2"/>
                                    <ul class="dropdown-menu dropdown23">
                                        <li class="container"
                                            style="width: 400px;height: 100%;overflow: hidden;padding-left: 0px !important;padding-right:0px !important; padding-bottom:10px;">


                                            <input type="hidden" id="roomshuliang23" name="roomshuliang"
                                                   value="1"/>

                                            <div class="room_container" style="margin: 15px;">
                                                <div class="room_title"
                                                     style="border-bottom: 1px solid #dbdbdb; line-height:30px;">
                                                        <span class="text-uppercase"
                                                              style="font-size:16px;">人数与住宿安排 </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="btn-group" style="margin-top:6px;">
                                                            <div class="radio">
                                                                <select class="chengren fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px;">
                                                                    <option>1 成人</option>
                                                                    <option selected>2 成人</option>
                                                                </select>
                                                                <select class="ertong fl"
                                                                        style="width:80px !important; height:27px; line-height:27px !important;display:inline-block;padding:0px; margin-left:10px;">
                                                                    <option selected>0 儿童</option>
                                                                    <option>1 儿童</option>
                                                                </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <div class="radio">
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left:-10px;">
                                                                    <input class="changename" type="radio"
                                                                           name="housetype23" checked="checked"
                                                                           value="double"/>
                                                                    <span>大床 <span
                                                                            class="icon_bg_car icon_bg_car1"></span></span>
                                                                </label>
                                                                <label class="radio-inline pull-left"
                                                                       style="line-height: 20px; margin-left: 12px;">
                                                                    <input class="changename" type="radio"

                                                                           name="housetype23" value="twin"/>

                                                                    <span>双床 <span
                                                                            class="icon_bg_car icon_bg_car2"></span></span>
                                                                </label>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-top: 10px;">
                                                <div id="addroombtn23"
                                                     class="font_bold font_red1 text-uppercase font_12 text-center"
                                                     style="padding: 10px 0 20px;"
                                                     onclick="javascript:planService.addroomBtnFun(this,'23');">
                                                    +增加房间
                                                </div>
                                                <div class="">
                                                    <div class="col-sm-4 col-sm-offset-3 btn btn-default xl font_red1 text-uppercase font_bold addDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript:planService.choosePersonNum('23');$('body').trigger('click');">
                                                        确认
                                                    </div>
                                                    <div class="col-sm-4 btn btn-default xl font_red1 text-uppercase font_bold removeDone"
                                                         style="text-align: center;width: 110px !important;"
                                                         onclick="javascript: $('body').trigger('click');">取消
                                                    </div>
                                                </div>
                                            </div>


                                        </li>
                                    </ul>


                                    <!--</div>-->
                                </div>
                            </div>

                            <div class="form-group start_plan fl ml20">
                                <a class="searchbar__submit btn btn-primary btn-large xl" style="width:125px !important;""
                                   onclick="planService.tripCreateJson('23')">
                                    <span>开始定制</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>


<div class="Chrysanthemum_front" style="position:fixed; top:38%; left:45%; z-index:99;">
    <img width="100" height="100" style="background:none;" src="<c:url value="/resources/images/login-w.GIF"/>"/>
    <!--<h4>正在生成您的行程单，请耐心等待…</h4>-->
</div>
<div id="Chrysanthemum_shade"></div>

<script type="text/javascript">

    $('.dropdown-menu').click(function (e) {
        e.stopPropagation();
    })

</script>

<script type="text/javascript">
    var personnum = 0;
    var everypersonnumarr = [2];
    var everyhousetypearr = ['double'];
</script>
</body>
</html>


