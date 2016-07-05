<!DOCTYPE HTML>
<head>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<script src="../../../resources/scripts/datePicker/WdatePicker.js"></script>
<title>壹点旅行</title>
</head>
<body> 
<div id="wrapper">
    <div id="content">
    	<div class="header-clear"></div>            
        <div class="content">
        	<div class="portfolio-one">
                <div class="portfolio-one-item full-bottom">
                    <div class="portfolio-one-image">
                        <a href="" class="swipebox" title="">
                            <i class="fa fa-plus"></i>
                        </a>
                        <img src="../../../resources/images/trip-list01.jpg" class="responsive-image">
                    </div>
                    <div class="">
                        <h3 class="title">【圣诞特别款】12月21日阿拉斯加极光之旅8天</h3>
                        <em class="subtitle">美国·西雅图  费尔班克斯 </em><br />
                        <h4 class="half-bottom float-left">
                             RMB&nbsp;10000/人
                        </h4>
                        <i class="float-left icon-ticket">含机票</i>
                        <div class="decoration-no"></div>
                        <div class="color-red">如您需要自主定制行程和时间？请电脑登录网页版“壹点旅行”或联系我们壹点旅行助理400-0013-078</div>
                        <div class="decoration"></div>
                        
                        <div class="customized full-bottom">
                        	<h4>当地交通</h4>
                            <p class="grey">全程专车：增加所有游玩项目的可选专车服务</p>
                            <p class="grey">壹点推荐：全程以最便捷、最具性价比为目的，并且不排斥公共交通方式来搭配的交通组合</p>
                            
                            <form class="form-button mt10">
                            	<input type="button" value="壹点推荐" />
                                <input class="ml-percent5" type="button" value="全程专车" />
                            </form>
                            <h4 class="mt10">签证</h4>
                            <form class="form-button">
                            	<input class="on" type="button" value="代办签证" />
                                <input class="ml-percent5" type="button" value="签证自理" />
                            </form>
                            <h4>机票</h4>
                            <form class="form-button">
                            	<input type="button" value="代订机票" />
                                <input class="ml-percent5" type="button" value="机票自理" />
                            </form>
                            
                        </div>
                        <!--<div class="full-bottom">
                        	<h4>选择出行日期</h4>
                            <li class="laydate-icon" id="start"></li>
                            <h4>选择返程日期</h4>
                            <li class="laydate-icon" id="end"></li>
                            
                        </div>-->
                        <div class="full-bottom">
                        	<h4>选择出行日期</h4>
                            <input type="text" name="${plan.startdate}" class="laydate-icon" id="startdate_${plan.id}"
                                               value="${plan.startdate}"
                                               onclick="WdatePicker({dateFmt: 'yyyy MM dd', minDate: '%y-%M-{%d+1}'});"/>
                            <h4>选择返程日期</h4>
                            <input type="text" name="${plan.startdate}" class="laydate-icon" id="startdate_${plan.id}"
                                               value="${plan.startdate}"
                                               onclick="WdatePicker({dateFmt: 'yyyy MM dd', minDate: '%y-%M-{%d+1}'});"/>
                            
                        </div>
                        
                        <h4>出行安排</h4>
                        <div id="main_demo" class="full-bottom">
                            成人<select class="ml-percent5" id="edu" name="edu">
                              <option value="0">1人</option>
                              <option value="1">2人</option>
                              <option value="2">3人</option>
                              <option value="3">4人</option>
                              <option value="4">5人</option>
                              <option value="5">6人</option>
                            </select><br />
                            儿童<select class="ml-percent5" id="salary" name="salary">
                              <option value="0">1人</option>
                              <option value="1">2人</option>
                              <option value="2">3人</option>
                              <option value="3">4人</option>
                              <option value="4">5人</option>
                              <option value="5">6人</option>
                            </select><br />
                            房间<select class="ml-percent5" id="room" name="room">
                              <option value="0">1人</option>
                              <option value="1">2人</option>
                              <option value="2">3人</option>
                              <option value="3">4人</option>
                              <option value="4">5人</option>
                              <option value="5">6人</option>
                            </select>
                        </div>
                    </div>       
                </div>
            </div>
        </div>
        
    </div>
    <div class="footer-buy" style="bottom:0px;">
        <a href="#" class="buy-ball">下一步</a>
    </div> 
    
    
</div>
<script src="../../../resources/scripts/jquery.selectlist.js"></script>
<script type="text/javascript">
	$(function(){
		$('select').selectlist({
			zIndex: 999,
			width: 200,
			height: 40,
			//display : block
		});		
	})
</script>

<!--<script>
	var start = {
		elem: '#start',
		format: 'YYYY/MM/DD',
		min: laydate.now(), //设定最小日期为当前日期
		max: '2099-06-16', //最大日期
		istime: true,
		istoday: false,
		choose: function(datas){
			 end.min = datas; //开始日选好后，重置结束日的最小日期
			 end.start = datas //将结束日的初始值设定为开始日
		}
	};
	var end = {
		elem: '#end',
		format: 'YYYY/MM/DD',
		min: laydate.now(),
		max: '2099-06-16',
		istime: true,
		istoday: false,
		choose: function(datas){
			start.max = datas; //结束日选好后，重置开始日的最大日期
		}
	};
	laydate(start);
	laydate(end);
</script>-->

</body>

