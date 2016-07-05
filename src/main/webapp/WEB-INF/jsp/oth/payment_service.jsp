<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/common/include.jsp" %>

<html>
<head>
    <title>快捷支付用户协议</title>
    
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
       <!-- <li><a href="${rootUrl}oth/visa_processing.html">签证办理</a></li>-->
		<li><a href="${rootUrl}oth/common_sense.html">出游常识</a></li>
		<li><a href="${rootUrl}oth/reservation_clause.html">预订条款</a></li>
		<!--<li class="hover"><a href="${rootUrl}oth/payment_service.html">付款与退款政策</a></li>-->
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
   <h3>快捷支付服务协议</h3>

<p>快捷支付服务协议（以下简称“本协议”）是壹点旅行网（以下简称“壹点”）与壹点旅行网用户(以下简称“用户”或“您”)就快捷支付服务的使用等相关事宜所订立的有效协议。本协议条款与您的权益具有或可能具有重大关系，请您在同意接受本服务前确认，您已经充分阅读、理解并接受本协议的全部内容，一旦您通过网络页面或手机客户端界面点击或以其他方式同意/确认本协议，即表示您与壹点已达成协议并同意接受本协议的全部内容。</p> 

<p>1. 您确认，在您使用本快捷支付服务（以下简称“本服务“）时，您是具有中华人民共和国法律规定的完全民事权利能力和民事行为能力的，能够独立承担民事责任的自然人（中华人民共和国境内（香港、澳门除外）的用户应年满18周岁），或者是在中国大陆地区合法开展经营活动或其他业务的法人或其他组织；本协议内容不受您所属国家或地区法律的排斥。不具备前述条件的，您应立即终止使用本服务。</p>

<p>2. 您保证，您在使用本服务时是合法、有效的，且您应保证将本服务用于合法或本协议约定的目的。</p>

<p>3. 您知晓，您选择使用的本服务要求您提供个人的支付信息，您需保证您所提供的所有信息是真实的、合法的、正确的、完整的。本协议所指支付信息是指您使用本服务时需要提供的个人信息，包括但不限于账户名、密码、个人姓名、身份证号码、银行卡号等。</p>

<p>4. 您同意，为了提供本服务的技术需要，我们有权采集、获取或在系统内保存您的部分支付信息。</p>

<p>5. 我们将严格确保您的个人信息和支付信息的安全。</p>

<p>6. 您知晓，您如使用本服务进行支付的，应当在确认支付金额后输入密码进行支付。您认可和同意：输入密码即视为您确认交易和交易金额并已不可撤销地向我们的支付系统发出指令，我们有权根据您的指令委托银行或第三方从您绑定的银行卡中将您确认的交易资金划扣给收款人。您不应以非本人意愿交易或其他任何原因要求退款或承担其他责任。</p>

<p>7. 您承诺，对使用本服务过程中您发出的所有指令的真实性、有效性承担全部责任；我们依照您的指令进行操作的一切风险由您自行承担。若您违反前述保证从而给壹点、发卡行或持卡人造成损失的，您应负责赔偿并承担全部法律责任。</p>

<p>8. 您认可，您使用本服务所涉及的账户的使用记录数据、交易金额数据等均以我们系统平台记录的数据为准。</p>

<p>9. 您保证，不向其他任何人泄露该支付信息。您知晓，您应妥善保管银行卡、卡号、密码以以及您的账号、密码、数字证书等与银行卡或与您的支付账户有关的一切信息。如您遗失银行卡、泄露账户密码或相关信息的，您应及时通知发卡行及/或我们，以减少可能发生的损失。因泄露密码、数字证书、丢失银行卡等导致的损失需由您自行承担。</p>

<p>10. 您认可，您存在下列情形之一的，壹点有权立即暂停或终止您使用相关服务而无需承担任何责任：</p>
<div class="box">
（1）您违反法律法规政策等规定的；<br />
（2）您违反本协议约定的；<br />
（3）壹点有合理理由怀疑您提供的资料错误、不实、过时或不完整的；<br />
（4）您违反壹点发布的使用本服务所必须遵守的协议、规则等相关规定的；<br />
（5）壹点认为向您提供本服务存在风险的。<br />
</div>
11. 如您发现有他人冒用或盗用您的账户及密码或任何其他未经合法授权之情形时，应立即以书面方式通知本公司并要求本公司暂停本服务。我们将积极响应您的要求，但您理解，对您的要求采取行动需要合理期限，在此之前，壹点对已执行的指令及(或)所导致的您的损失不承担任何责任。

12. 若您的支付信息变更而您未及时更新资料，导致本服务无法提供或提供时发生任何错误，您不得将此作为取消交易、拒绝付款的理由，您将承担因此产生的一切后果，壹点不承担任何责任。
13. 您使用本服务时同意并认可，可能由于银行本身系统问题、银行相关作业网络连线问题或其他不可抗拒因素，造成本服务无法提供。您确保您所输入的您的资料无误，如果因资料错误造成本公司于上述异常状况发生时，无法及时通知您相关交易后续处理方式的，壹点不承担任何损害赔偿责任。

14. 您同意，基于运行和交易安全的需要，壹点有权暂停提供或者限制本服务部分功能,或提供新的功能，在减少、增加或者变化任何功能时，只要您仍然使用本服务，表示您仍然同意本协议或者变更后的协议。

15. 您同意，壹点有权随时对本协议内容进行单方面的变更，并以在本网站公告的方式予以公布，无需另行单独通知您；若您在本协议内容公告变更后继续使用本服务的，表示您已充分阅读、理解并接受修改后的协议内容，也将遵循修改后的协议内容使用本服务；若您不同意修改后的协议内容，您应停止使用本服务。

16. 本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，没有相关法律规定的，参照通用国际商业惯例和（或）行业惯例。

17. 所有使用本服务而必须遵守的协议、附件和规则等均构成本协议不可分割的组成部分，与本协议具有同等法律效力。就本协议产生之争议，任何争议和纠纷，均应由双方友好协商解决；如协商不成的，您和壹点均有权向壹点所在地人民法院提起诉讼。
</div>
</div>
</div>
<!--about us end-->
<div class="clear"></div>
</div>
</body>

</html>