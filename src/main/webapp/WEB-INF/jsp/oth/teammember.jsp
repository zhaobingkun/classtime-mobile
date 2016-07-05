<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/common/include.jsp" %>

<html>
<head>
    <title>团队成员</title>
    <link rel="stylesheet" href="<c:url value="/resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/main.css"/>">
</head>

<body>
	<div class="hidden-in-old-browsers nz-main-content-wrapper">
      <div class="tab-pane fade in active">
        <div class="container ">
        <div class="team-banner">
            <div class="team-container">
                <div class="team-banner-left">
                    <p>有&nbsp;趣&nbsp;&nbsp;&nbsp;&nbsp;简&nbsp;单&nbsp;&nbsp;&nbsp;&nbsp;理&nbsp;性&nbsp;派&nbsp;的&nbsp;旅&nbsp;行&nbsp;团&nbsp;队</p>
                </div>
            </div>
        </div>
        </div>
        </div>
        <div class="bk_module bk_reson_module mt80 mb40" id="bk_reson_module">
        <div class="container bk_module_container">
            <div class="row bk_reason_list" id="bk_reason_list">
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/vivian.jpg" alt="">
                    <p class="bk_reson_title">Vivian</p>
                    <p class="bk_reason_desc">毕业于南开大学旅游管理专业，国家发展研究院(NSD)-北大国际MBA。出境旅游15年职业经历，25岁即成为国内大型旅行社集团最年轻的出境部门经理，后任职于途易中国和深圳国旅，分别就任运营总监和北京分公司总经理，美盛旅行公司中国及美国公司创始人。极度热爱旅行，创立“壹点旅行”是希望将自己走过世界各地的美好带给用户。</p>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/wade.jpg" alt="">
                    <p class="bk_reson_title">Wade</p>
                    <p class="bk_reason_desc">毕业于北京大学计算机系软件专业，国家发展研究院（NSD）- 北大国际MBA。
曾任有缘网产品运营总监&总经理助理，联想控股现代服务投资事业部高级分析师，e龙旅行网系统分析师&项目总监，联合创立远方旅行网(后被e龙旅行网收购) 。
坚持理性派的旅行观，力图用智能实现旅行线路规划的合理性和流畅性。用最优价格实现价值最大化的旅行体验。</p>
                </div>
            </div>
            
        </div>
        <div class="container bk_module_container mt40">
            <div class="row bk_reason_list" id="bk_reason_list">
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/bony.jpg" alt="">
                    <p class="bk_reson_title">Bony</p>
                    <p class="bk_reason_desc">毕业于外交学院法语与国际关系专业。后前往法国，在Université de Paris、Sciences Po & EM de Strasbourg，获得媒体学硕士，经济学硕士及市场营销硕士学位。<br />
曾任职于国内第一家高端旅行定制机构，负责旅行产品设计和运营工作。<br />
旅行是我生命的一部分，已经走过20个国家，仍然随时准备着出发。我想，“壹点旅行”也许无法改变世界，但可以温暖很多心灵。</p>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/samuel.jpg" alt="">
                    <p class="bk_reson_title">Samuel</p>
                    <p class="bk_reason_desc">酷爱旅行，“把客人的每一次旅行都当做自己的旅行来用心安排”是进入旅游行业的初衷和动力。十年传统出境旅行社工作经历中不改初心，现作为资深专业旅行顾问投入互联网怀抱，在购物、自费、低价团等等陷阱充斥各种旅行团的时候辟出一分安心土壤，继续用心为您订制属于您自己的纯粹旅行。开心旅行，开心工作，让您的旅行不再变味。
</p>
                </div>
            </div>
            
        </div>
        <div class="container bk_module_container mt40">
            <div class="row bk_reason_list" id="bk_reason_list">
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/vika.jpg" alt="">
                    <p class="bk_reson_title">Vika</p>
                    <p class="bk_reason_desc">徘徊在美食和减肥漩涡中的水瓶座女汉子，做过事业单位杂志美编，因为不甘安稳、爱折腾，选择了互联网。既然青春那么长，去试去闯又何妨。</p>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-6 bk_reason">
                    <img src="../../../resources/images/zhaobk.jpg" alt="">
                    <p class="bk_reson_title">老赵</p>
                    <p class="bk_reason_desc">近10年互联网技术开发经验，曾先后在搜狐畅游、飞信sns社区等上市公司负责核心功能技术研发。出于对旅行的热爱，加入了壹点旅行团队。希望能用我丰富的互联网开发经验，提供稳妥方便的技术支持，给用户带来方便快捷的旅行体验。</p>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>