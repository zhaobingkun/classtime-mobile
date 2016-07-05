<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/common/include.jsp" %>

<html>
<head>
    <title>出游须知</title>
    
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
		<li class="hover"><a href="${rootUrl}oth/common_sense.html">出游常识</a></li>
		<li><a href="${rootUrl}oth/reservation_clause.html">预订条款</a></li>
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
   <h3>安全须知</h3><br />

<h3>一、证件安全注意事项</h3>

护照、签证、身份证、信用卡、机船车票及文件等是出国(境)旅游的身份证明和凭据，必须随身携带，妥善保管。<br />

1. 请把原件放在贴身的内衣口袋中；<br />

2. 请在出发前，各复印一份放在手提包中；<br />

3. 遇到有人检查证件时，不要轻易应允，要有礼貌地请对方出示其身份或工作证件，否则应予拒绝。如对方是警察，可在检查中记下其证件号、胸牌号和车号，以防万一；<br />

4. 证件一旦遗失或被偷被抢，请立即报告领队并向警方报案，同时请警方出具书面遗失证明，必要时向所在国申请出境签证并向我国驻所在国使领馆提出补办申请；<br />

5. 请严格遵守有关国际公约和出境游目的地国家（地区）的入境法规，不得携带违禁药品，不得参与目的地国家（地区）禁止从事的活动，携有大量现金或特殊药品出入境时，要按规定如实申报。<br />

<h3>二、钱物安全注意事项</h3>

1. 出境期间不要携带大量现金和贵重物品；<br />

2. 不要把现金和贵重物品放在托运行李、外衣口袋或易被割破的手提包中；<br />

3. 不要把现金和贵重物品放在酒店房间或旅游车中；<br />

4. 不要让也不要帮不相识的人看管或托运行李。<br />

比较安全的做法是：<br />

1. 尽可能少携带现金，代之以信用卡或旅行支票，出游前可在国内兑换一些小额货币，用于在目的地小额消费，如打电话、上厕所和支付小费；<br />

2. 贵重物品可存放在酒店总台和房间的保险箱中(须保管好凭据、钥匙并记住保险箱密码)；<br />

3. 如发现钱物丢失或被偷盗，请仔细回想并尽快处理。如在机场丢失，请速到航空公司机场失物招领部门签记或索取丢失证明以备索赔。如在酒店或旅游车上丢失，请与相关方面交涉，并可酌情报警方处理。<br />

<h3>三、交通安全注意事项</h3>

1. 要熟悉所在国的交通信号标志，遵守交通规则，不要强行抢道，也不要随意横穿马路；<br />

2. 在国外乘坐旅游车时，不要乘坐第一排的工作人员专座，此专座设有工作人员保险，但游客乘坐一旦发生意外是得不到赔付的；<br />

3. 在乘坐飞机或乘车时请系好安全带；<br />

4. 不要在飞机起飞后和降落前使用手机和相关电子用品；不要把头和手伸出旅游车外；<br />

5. 在乘坐船、快艇等水上交通工具时，要穿救生衣(圈)；<br />

6. 万一发生交通事故，不要惊慌，要采取自救和互救措施，保护事故现场，并速报告警方。<br />

<h3>四、饮食安全注意事项</h3>

1. 请在指定或下榻的酒店餐厅用餐，不购买和饮用地摊或小商贩提供的饮料食品；<br />

2. 请坚持饭前便后洗手的习惯，不吃过期或不洁净的饭菜瓜果，也不要自带食品（往往不能通过海关检疫）；<br />

3. 请牢记自己的饮食禁忌，不盲目尝鲜、贪吃、乱吃；<br />

4. 请避免在流行病传播季节到流行病传播地区停留；<br />

5. 请做好预防措施，携带一些常用必备药品；<br />

6. 万一患病，请及时到医院就诊，不要强忍硬扛。<br />

<h3>五、住宿安全注意事项</h3>

1. 进出酒店房间随时关门锁门，离开酒店时把钥匙交回总台，不要让陌生人进入房间；<br />

2. 正确使用房间电器等设施，不要在床上吸烟，不要把衣物放在电灯台架上；<br />

3. 要熟悉酒店安全通道和紧急出口等疏散标志，遇到火灾时不要搭乘电梯；<br />

4. 离开酒店前请携带一张记有该酒店地理往置和联系电话的卡片，以保迷路后安全返回；<br />

5. 到健身房和游泳池锻炼时，请注意自我保护。<br />

<h3>六、观光安全注意事项</h3>

1. 记下司机/导游的手机号码，以备联系方便；<br />

2. 记住旅游车车牌号和所在停车场位置，以便走失后找回；<br />

3. 万一联系不到司机/导游或找不到旅游车，可自行乘出租车返回酒店或请警方协助并设法告诉司机/导游；<br />

4. 在拍照、摄像时注意往来车辆和有否禁柏标志，不要在设有危险警示标志的地方停留；<br />

5. 请慎重参加带有刺激性的活动，量力而行，提高自我保护意识，服从安全人员的指挥；不要到赌场和色情场所消费。<br />

6. 夜间自由活动请结伴而行，不要乘坐无标志的车辆，不要围观交通事故、街头纠纷，不要太晚返回。<br />

<h3>七、购物安全注意事项</h3>

1. 购物时请保管好随身携带的物品，不到人多、拥挤的地方购物；<br />

2. 一定要到正规的商店购买，并且要有相关的发票证明，在数量上请适当，不要超出标准；<br />

3. 在试衣试鞋时，最好请同伴陪同和看管物品；<br />

4. 不要当众数钱。<br />

<h3>八、人身安全注意事项</h3>

1. 请远离毒品，不接受陌生人搭讪，防止人身侵害；<br />

2. 请尊重所在国，特别是有特殊宗教习俗国家的风俗习惯，并自觉保护当地自然环境，避免因言行举止不当引发纠纷。<br />

3. 遇到地震等自然灾害或政治动乱、战乱、突发恐怖事件或意外伤害时，请冷静处理并尽快撤离危险地区，并及时报告我国驻所在国使领馆或与国内有关部门联系寻求营救保护。<br />

<h3>九、其他注意事项</h3>

1. 您应确保自身身体条件适合外出旅游度假。如您为孕妇或有心脏病、高血压、呼吸系统疾病等病史，请在征得医院专业医生同意后预订旅游产品。若您参加高原地区旅游或风险旅游项目（包括但不限于：游泳、浮潜、冲浪、漂流等水上活动以及骑马、攀岩、登山等高风险的活动）或患有不宜出行旅游的病情（包括但不限于：恶性肿瘤、心血管病、高血压、呼吸系统疾病、癫痫、怀孕、精神疾病、身体残疾、糖尿病、传染性疾病、慢性疾病健康受损），须在预订前自行前往医疗机构体检后，确保自身身体条件能够完成本次旅游活动，并向壹点旅行网提供体检报告副本；您须保证提供的身体健康状况真实，如隐瞒由本人承担全部责任；若您或者同行者中有70岁以上（含70岁）参加旅游者，应有亲属同意，且非单人出行，同时在出行前如实填写并提交《身体健康申报表》；若壹点旅行已经提示并劝阻，但如旅游者仍坚持参加旅游活动，由此造成任何人身意外及不良后果将由旅游者本人全部承担。<br />

2. 您应确保您不属于中国政府限制出境的人员之列。<br />

3. 您提供给壹点旅行网的证件和相关资料，以及通讯联络方式与地址等必须真实有效。<br />

4. 请注意壹点旅行网的“预订说明”、“产品确认单”等中提及的时间均为所在国或地区的当地时间，并请注意旅游目的国和国内的时差。<br />
</div>
</div>
</div>
<!--about us end-->
<div class="clear"></div>
</div>
</body>

</html>