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



<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="/class/classlist.html" class="class">课程</a></li>
		<li class="current"><a href="/class/classaddbefore.html" class="add">添加课程</a></li>
		<li><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	添加课程
</header>

<div class="form-wrap">
    <form  action="/class/classadd.html" method="post">
	    <ul class="inputs-ul">

            <div class="color-select-wrap select">
                <select class="select-a-color select"  name="sid">

                    <c:forEach items="${studentList}" var="studen"  varStatus="status">
                        <option class="orange" value="${studen.id}"  selected>${studen.name}</option>
                    </c:forEach>
                </select>
            </div>

		<li class="one-item">
			<label class="tit">课程名称：</label>
			<input type="text" name="classname" class="i-txt">
		</li>
		<li class="one-item">
			<label class="tit">课程开始日期：</label>
            <input type="text" name="begintimeStr" id="begintimeStr" class="i-txt i-txt-calendar">
		</li>
		<li class="one-item">
			<label class="tit">课程结束日期：</label>
			<input type="text" name="endtimeStr" id="endtimeStr" class="i-txt i-txt-calendar">
		</li>
		<li class="one-item one-item-week">
			<label class="day-of-week" for="Monday">
				<input type="checkbox" value="1" id="Monday" name="weekday" class="checkbox-week">
				星期一
			</label>
			<label class="day-of-week" for="Tuesday">
				<input type="checkbox"  value="2"  id="Tuesday" name="weekday"  class="checkbox-week">
				星期二
			</label>
			<label class="day-of-week" for="Wednesday">
				<input type="checkbox"  value="3" id="Wednesday" name="weekday"  class="checkbox-week">
				星期三
			</label>
			<label class="day-of-week" for="Thursday">
				<input type="checkbox"  value="4" id="Thursday" name="weekday"  class="checkbox-week">
				星期四
			</label>
			<label class="day-of-week" for="Friday">
				<input type="checkbox"  value="5" id="Friday" name="weekday"  class="checkbox-week">
				星期五
			</label>
			<label class="day-of-week" for="Saturday">
				<input type="checkbox"  value="6" id="Saturday" name="weekday"  class="checkbox-week">
				星期六
			</label>
			<label class="day-of-week" for="Sunday">
				<input type="checkbox"  value="0" id="Sunday"  name="weekday"  class="checkbox-week">
				星期日
			</label>
		</li>
            <li class="one-item">
                <label class="tit">上课时间：</label>
                <input type="text" name="classtime"  id="classtime" class="i-txt">
            </li>
		<li class="one-item">
			<label class="tit">上课地点：</label>
			<input type="text" name="classaddress"class="i-txt">
		</li>
		<li class="one-item">
			<label class="tit">课程代表色：</label>
			<div class="color-select-wrap select">
				<select class="select-a-color select" id="color" name="color">
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
            共<input type="text" name="num" class="class-amount">次课
        <%--<div class="class-amount">共 <b>48</b> 次课</div>--%>
			<input type="submit" class="btn-submit" value="保存">
			<input type="cancle" class="btn-submit btn-grey" value="取消">
		</li>
	</ul>
    </form>
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

<script type="text/javascript">
    $(function () {
        var curr = new Date().getFullYear();
        var opt = {

        }
        opt.date = {preset : 'date'};
        opt.time = {preset : 'time'};
        $('#begintimeStr').val('').scroller('destroy').scroller($.extend(opt['date'], { theme:'default', mode:'scroller', display:'modal', lang:'zh'}));
        $('#classtime').val('').scroller('destroy').scroller($.extend(opt['time'], { theme:'default', mode:'scroller', display:'modal', lang:'zh'}));

    });
</script>
</body>
</html>
