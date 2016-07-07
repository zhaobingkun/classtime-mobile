<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<script>
$(document).ready(function() {
	$('.select-a-color').change(function(){
		var newcolor = $()
	})
});
</script>
</head>

<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="classlist.jsp" class="class">课程</a></li>
		<li class="current"><a href="addClass.html" class="add">添加课程</a></li>
		<li><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	添加课程
</header>

<div class="form-wrap">
	<ul class="inputs-ul">
		<li class="one-item">
			<label class="tit">课程名称：</label>
			<input type="text" class="i-txt">
		</li>
		<li class="one-item">
			<label class="tit">课程开始时间：</label>
			<input type="text" class="i-txt i-txt-calendar">
		</li>
		<li class="one-item">
			<label class="tit">课程结束时间：</label>
			<input type="text" class="i-txt i-txt-calendar">
		</li>
		<li class="one-item one-item-week">
			<label class="day-of-week" for="Monday">
				<input type="checkbox" id="Monday" class="checkbox-week">
				星期一
			</label>
			<label class="day-of-week" for="Tuesday">
				<input type="checkbox" id="Tuesday" class="checkbox-week">
				星期二
			</label>
			<label class="day-of-week" for="Wednesday">
				<input type="checkbox" id="Wednesday" class="checkbox-week">
				星期三
			</label>
			<label class="day-of-week" for="Thursday">
				<input type="checkbox" id="Thursday" class="checkbox-week">
				星期四
			</label>
			<label class="day-of-week" for="Friday">
				<input type="checkbox" id="Friday" class="checkbox-week">
				星期五
			</label>
			<label class="day-of-week" for="Saturday">
				<input type="checkbox" id="Saturday" class="checkbox-week">
				星期六
			</label>
			<label class="day-of-week" for="Sunday">
				<input type="checkbox" id="Sunday" class="checkbox-week">
				星期日
			</label>
		</li>
		<li class="one-item">
			<label class="tit">上课地点：</label>
			<input type="text" class="i-txt">
		</li>
		<li class="one-item">
			<label class="tit">课程代表色：</label>
			<div class="color-select-wrap select">
				<select class="select-a-color select">
					<option class="orange" value="orange">橘色</option>
					<option class="yellow" value="yellow">黄色</option>
					<option class="yellow-green" value="yellow-green">黄绿色</option>
					<option class="turquoise" value="turquoise">湖蓝色</option>
					<option class="blue" value="blue">蓝色</option>
					<option class="purple" value="purple">紫色</option>
					<option class="rose-red" value="rose-red">枚红色</option>
				</select>
			</div>
		</li>
		<li class="btm-btn">
			<div class="class-amount">共 <b>48</b> 次课</div>
			<a href="classlist.jsp" class="btn-submit">保存</a>
			<a href="classlist.jsp" class="btn-submit btn-grey">取消</a>
		</li>
	</ul>
</div>

<script>
!function(){
	console.log('come');
	$('.day-of-week input').click(function(){
		console.log('start-to-change');
		$(this).parent().toggleClass('week-selected');
		console.log('end-changing');
	})
	console.log('go');
}();
</script>
</body>
</html>
