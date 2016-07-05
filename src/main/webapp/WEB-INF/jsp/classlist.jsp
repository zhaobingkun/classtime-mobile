<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no" />
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>课程管理</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/class.css">
<script src="js/jquery.min.js"></script>
</head>

<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li class="current"><a href="classlist.jsp" class="class">课程</a></li>
		<li><a href="addClass.html" class="add">添加课程</a></li>
		<li><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	课程管理
</header>

<div class="class-wrap">
	<h2 class="student-overview">
		<a href="" class="btn-student fr pad-5">管理所有课程</a>
		<b>赵建国</b>
		<span class="id">学号：200704271725180001</span>
	</h2>
	<ul class="subject-wrap">
		<li class="subject">
			<a href="javascript:void(0)" class="name-settings">
				英语
			</a>
			<a href="javascript:void(0)" class="slide-up slide-switch"></a>
			共<em class="green">48</em>次课  剩余<em class="green">20</em>次课
		</li>
		<li class="subject-detail">
			<ul class="time-ul">
				<li class="start-over">开始时间：<em class="green">2016</em>年<em class="green">4</em>月<em class="green">10</em>日</li>
				<li class="start-over">结束时间：<em class="green">2017</em>年<em class="green">1</em>月<em class="green">1</em>日</li>
			</ul>
			<ul class="changes">
				<li class="little-changes"><i>请假：</i><em><span class="green">2</span>次</em></li>
				<li class="little-changes"><i class="bigger">调课：</i><em><span class="green">3</span>次</em></li>
				<li class="little-changes"><i>补课：</i><em><span class="green">1</span>次</em></li>
				<li class="little-changes"><i class="bigger">假期顺延：</i><em><span class="green">4</span>次</em></li>
			</ul>
		</li>
	</ul>
	<ul class="subject-wrap">
		<li class="subject">
			<a href="javascript:void(0)" class="name-settings">
				语文
			</a>
			<a href="javascript:void(0)" class="slide-down slide-switch"></a>
			共<em>48</em>次课  剩余<em>20</em>次课
		</li>
		<li class="subject-detail hide">
			<ul class="time-ul">
				<li class="start-over">开始时间：2016年4月10日</li>
				<li class="start-over">开始时间：2017年1月1日</li>
			</ul>
			<ul class="changes">
				<li class="little-changes"><i>请假：</i><em><span class="green">2</span>次</em></li>
				<li class="little-changes"><i class="bigger">调课：</i><em><span class="green">3</span>次</em></li>
				<li class="little-changes"><i>补课：</i><em><span class="green">1</span>次</em></li>
				<li class="little-changes"><i class="bigger">假期顺延：</i><em><span class="green">4</span>次</em></li>
			</ul>
		</li>
	</ul>
	<ul class="subject-wrap">
		<li class="subject">
			<a href="javascript:void(0)" class="name-settings">
				数学
			</a>
			<a href="javascript:void(0)" class="slide-down slide-switch"></a>
			共<em>48</em>次课  剩余<em>20</em>次课
		</li>
		<li class="subject-detail hide">
			<ul class="time-ul">
				<li class="start-over">开始时间：2016年4月10日</li>
				<li class="start-over">开始时间：2017年1月1日</li>
			</ul>
			<ul class="changes">
				<li class="little-changes"><i>请假：</i><em><span class="green">2</span>次</em></li>
				<li class="little-changes"><i class="bigger">调课：</i><em><span class="green">3</span>次</em></li>
				<li class="little-changes"><i>补课：</i><em><span class="green">1</span>次</em></li>
				<li class="little-changes"><i class="bigger">假期顺延：</i><em><span class="green">4</span>次</em></li>
			</ul>
		</li>
	</ul>
</div>

<script>
!function(){
	$('.slide-switch').click(function(){
		var _this = $(this);
		var _content = $(this).parent().next();
		if( _content.is(':hidden') ){
			_this.removeClass('slide-down').addClass('slide-up');
			_content.slideToggle();
		}else{
			_this.removeClass('slide-up').addClass('slide-down');
			_this.parent().next().slideToggle();
		}
	})
}();
</script>
</body>
</html>
