<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/common/include.jsp" %>

<html>
<head>
    <title>预定须知</title>
    
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/common_o2.1.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/us.css"/>">
</head>
<body style=" background:#fff !important;">
<div class="shift-with-hiw js-hero" style="margin-top: 0px; height:300px; clear:both; overflow:hidden; position:relative; z-index:1;"">
    <div class="hero__background" data-native-currency="CNY" aria-hidden="true" style="height:300px;">
        <img alt="" height="100%" src="../../../resources/images/website_terms.jpg" width="100%">
    </div>

    <!--<div class="page-container page-container-full text-center mt80" style="z-index:999999">
        <div class="va-container va-container-v va-container-h">
            <div class="va-middle">
                <h2 class="text-branding text-jumbo text-contrast space-1 font32 mt30">
                    旅行，最重要的不是去哪儿，而是和谁去
                </h2>
            </div>
        </div>

    </div>-->


</div>
<div class="content us">
<!--left menu begin-->


<div class="lft">
	<ul>
		<li><a href="${rootUrl}oth/website_terms.html">网站条款</a></li>
        <li><a href="${rootUrl}oth/useprocess.html">使用流程</a></li>
        <!--<li><a href="${rootUrl}oth/visa_processing.html">签证办理</a></li>-->
		<li><a href="${rootUrl}oth/common_sense.html">出游常识</a></li>
		<li class="hover"><a href="${rootUrl}oth/reservation_clause.html">预订条款</a></li>
		<!--<li><a href="${rootUrl}oth/payment_service.html">付款与退款政策</a></li>-->
		<li><a href="${rootUrl}oth/contactus.html">联系我们</a></li>
        
	</ul>
</div>
<script type="text/javascript">
	var namelist = ['aboutus','disclaimer','privacy','terms','payment_service','job','partner','contactus'];
	var url=location.href;
	for(var i=0;i<namelist.length;i++){
		if(url.indexOf(namelist[i]) > 0){
			$('div.lft ul li').eq(i).addClass('hover');
			break;
		}
	}
</script>
<!--left menu end-->
<!--about us begin-->
<div class="rgt">
<!--address begin-->
<div class="clause">
  <div class="text">
   <h3>预订须知</h3><br />


1. 预订付款期：为保证您的预订，所有订单请在确认后按相应提示时间付款。<br />

2. 酒店入住登记要求：登记入住酒店的客人中至少要有1人超过18周岁，即未满18周岁的客人必须由18周岁以上的客人帮其办理酒店入住手续。<br />

3. 行程开始和结束时间：您的行程开始时间以出境口岸办理离境手续，登上离境交通工具时计，行程结束时间以离开入境交通工具，入境口岸办理入境手续时止。不含上述类别交通工具的行程开始时间以您所订行程中预订的第一晚酒店应入住当日当地时间14点计。行程结束时间以您所订行程中预订的最后一晚酒店应离店当日当地时间正午12点计。（按照国际惯例，酒店的入住时间为14:00后，离店时间为正午12:00前。如提前入住或推迟离店，均须酌情加收一定的费用。）壹点旅行网所有服务的时间均为目的地当地时间。<br />

4. 产品预订成功后，您按期付清壹点旅行网给您确认的应付费用或提供壹点旅行网认可的经济担保时，壹点旅行网给您确认的订单即时生效并产生法律效力。
如您未按要求及时付清相关费用，而此时壹点旅行网为您预留的产品的价格、内容或标准等发生变化，壹点旅行网对此将不承担任何责任。<br />

5. 订单生效后，您应按订单中约定的时间或时段准时出发或按时入住所订酒店。如果您未能按照您预订的抵店日期入住酒店，酒店有权不保留您的预订，若您的行程有任何更改，请及时提前来电通知我们，我们会尽可能代您通知酒店保留或更改您的预订，是否能够保留或更改需视酒店的情况来定。如您未准时出发或未按时入住所订酒店，视为您主动解约，壹点旅行网可以按照本须知第6条的约定要求赔偿。   <br />

6. 若您主动解除已生效订单<br />

订单生效后，若要主动解除已生效订单，您必须在所预订行程开始前通知壹点旅行网解除所做预订，包括放弃整张订单的全部内容、减少出行人数、减少住宿房间数或晚数，同时您还须承担壹点旅行网处理该订单已经支出的其它必要费用：<br />
	<div class="box">
   （1）若您在壹点旅行网办理签证，递送签证后取消（一般是收到所需材料后的下一个工作日送签），收取全部签证费用。<br />

   （2）若您预订的产品，从订单生效后起至所订行程开始前这段时间通知取消的，除去已经发生和必须的费用，其它部分全部退款。<br />

   （3）如果您预订的是航空公司规定不可退改的航班、租车公司规定不可退改的用车或含酒店取消限制的产品（详见产品预订页面），因这部分为必须费用，您须全额承担因取消订单带来的实际损失。<br />

   （4）由于某些产品有一定的特殊性，旅游者解除合同的扣除费用条款可能发生变更，如与主协议发生冲突时，以产品中的“预订限制”为准。<br />
</div>
7.  因壹点旅行网原因取消您的已生效订单<br />

在您按要求付清所有产品费用后，如因壹点旅行网的原因，致使您的行程不能成行而取消的，壹点旅行网应当立即通知您，无条件退返您已支付的所有费用，但不涉及其他赔偿
。由于某些产品有一定的特殊性，壹点旅行解除合同的违约金条款可能发生变更，如与主协议发生冲突时，以产品中的“预订限制”为准。<br />
<!--<div class="box">
   （1）在您所订行程开始前7个工作日通知您取消行程的，除退还给您全部产品款项以外，另外支付给您全部旅游度假产品费用的10%作为违约金。<br />

   （2）在您所订行程开始前不足7天工作日内（含7个工作日）通知您取消行程的，除退还给您全部产品款项以外，另外支付给您全部产品费用的80%作为违约金。<br />

   （3）在您所订行程开始前不足3个工作日通知您取消行程的，除退还给您全部产品款项以外，另外支付给您全部产品费用的100%做为违约金。<br />

   （4）若您是在壹点旅行网办理的签证，产生的签证费损失由壹点旅行网承担。<br />

   （5）由于某些产品有一定的特殊性，壹点旅行解除合同的违约金条款可能发生变更，如与主协议发生冲突时，以产品中的“预订限制”为准。<br />
</div>-->
8. 更改已生效订单<br />

订单生效后，您主动要求更改该订单内的任何项目，请务必在行程开始前通知壹点旅行网您的更改需求。壹点旅行网会尽量满足您的需求，但您必须全额承担因变更带来的损失及可能增加的费用。 
<br />
若您所预订的产品在目的地停留的日期部分或全部处在国家或其他部分地方性重大节日期间，鉴于资源的特殊状况，已生效订单不可进行任何更改。<br />

订单生效后，壹点旅行网更改您的已生效订单内的任何项目时：<br />
<div class="box">

   （1）非壹点旅行网可控原因引起的更改，如房间被政府征用，航空公司临时取消、更改航班等，壹点旅行网会尽力协助您办理相关退变事宜。<br />

   （2）因壹点旅行网原因引起的更改，壹点旅行网一方承担变更所产生的直接损失。
</div>
9. 行程使用权变更<br />

在您按要求付清所有费用后，在出发前15日前，并必须经壹点旅行网同意，您可以将您预订的行程产品使用权转让或赠送给具有参加本次行程条件的第三人，但第三人必须具备本次活动所必须的签证或签注。变更后如有费用增加，须由您全额承担，否则壹点旅行网有权拒绝您的变更要求。<br />


10. 涉及第三方的相关责任<br />

第三方指在办理海外旅游事宜中涉及的发照机关、签证机关、航空公司、保险公司、境外接待社、饭店、同行游伴及其他相关机构、企业和个人。<br />
对于壹点旅行网无法控制，您与第三方出现的下列情况，壹点旅行网应协助办理，结果由您承担，壹点旅行网不承担责任。<br />
　·您在旅行中应注意人身财产安全，妥善保管自己的证件及行李物品， 如果发生人身意外或随身携带行李物品遗失、被盗、被抢等情况，壹点旅行网应积极协助办理，但无赔偿之责任；补办证件所产生的费用，由您承担。解决的依据应以相关机构（如航空公司、酒店、保险公司）所订立的安全赔偿条例为准。您必须保留有关单据和证明文件。<br />
　·您违反相关国家的地区法律、法规而被罚、被拘留、遣返及追究其他刑事、民事责任的，一切责任和费用由您自负，壹点旅行网维护您的合法权益，协助有关机关查明事宜。<br />
　·是否发放护照、签证，是否准予出入境，系有关机构之行政权或主权，您应按要求提供真实情况，壹点旅行网可协助办理。但因您自身原因或提供材料问题不能及时办理护照、签证而影响行程的，以及被相关机关拒发护照、签证或拒绝入境的，您承担全部责任，并应支付壹点旅行网损失费用。<br />
　·因有关机构政策调整原因造成您的护照、签证延误，双方均不承担责任。如发生费用，由您承担。<br />
　·您违反我国及前往国家（地区）的有关规定，携带过量货币和物品，或因携带违禁品而产生的一切后果，责任均由您自负。<br />
　·如果以上事项缘由壹点旅行网不知情或您故意隐瞒，有关损失由您自行承担。<br />

11. 不可抗力<br />

因不可抗力(包括地震、台风、雷击、水灾、火灾等自然原因,以及战争、政府行为、黑客攻击、电信部门技术管制等原因)不能履行或不能继续履行已生效订单约定内容的，壹点旅行网不承担违约责任，但法律另有规定的除外。<br />


本须知未尽的其他事项，在壹点旅行网确认给您的订单中另行约定。
</div>
</div>
</div>
<!--about us end-->
<div class="clear"></div>
</div>
</body>

</html>