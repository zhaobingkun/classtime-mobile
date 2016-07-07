<!doctype html>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="classlist.jsp" class="class">课程</a></li>
		<li><a href="addClass.html" class="add">添加课程</a></li>
		<li class="current"><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	<a href="mine.html" class="icon-return"></a>
	添加新学员
</header>

<div class="form-wrap">
	<h4 class="top-id">学号：<em class="green">200704141752180001</em></h4>
	<ul class="inputs-ul">
		<li class="one-item">
			<label class="tit">姓名：</label>
			<input type="text" class="i-txt">
		</li>
		<li class="one-item">
			<label class="tit">性别：</label>
			<ul class="sex-choice">
				<li class="boy current">我是男孩</li>
				<li class="girl">我是女孩</li>
			</ul>
		</li>
		<li class="one-item">
			<label class="tit">城市：</label>
			<input type="text" class="i-txt">
		</li>
		<li class="btm-btn">
			<a href="classlist.jsp" class="btn-submit">添加</a>
		</li>
	</ul>
</div>



<script>
!function(){
	$('.sex-choice li').click(function(){
		$(this).addClass('current').siblings().removeClass('current');
	});
	
	//alert('可视区域高度' + $(window).height()); //浏览器当前窗口可视区域高度 
	//alert('文档的高度' + $(document).height()); //浏览器当前窗口文档的高度 
	
	var heightLimitation = $(window).height() - 45 - 61;
	var realHeight = $('.form-wrap').outerHeight();
	if( heightLimitation >realHeight){
		$('.form-wrap').height(heightLimitation - 18 - 18 - 15 - 15)
	}
}();
</script>
</body>
</html>
