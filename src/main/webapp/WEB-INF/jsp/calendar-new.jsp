<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<!doctype html>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li class="current"><a href="class.html" class="class">课程</a></li>
		<li><a href="addClass.html" class="add">添加课程</a></li>
		<li><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<div class="fix-head">
	<header class="top-bar">
		<a href="mine.html" class="icon-return"></a>
		课程日历
	</header>
	<ul class="days-head">
		<li>日</li>
		<li>一</li>
		<li>二</li>
		<li>三</li>
		<li>四</li>
		<li>五</li>
		<li>六</li>
	</ul>
</div>

<div class="calendar-wrap">
	<div class="one-month">
		<div class="year-month">2016年6月</div>
		<ul class="dates-ul"  id="showlist">
			<li><p class="calendar-date-p"></p></li>
			<li><p class="calendar-date-p"></p></li>
			<li><p class="calendar-date-p"></p></li>
			<li><p class="calendar-date-p">01</p></li>
			<li><p class="calendar-date-p">02</p></li>
			<li><p class="calendar-date-p">03</p></li>
			<li><p class="calendar-date-p">04</p></li>

			<li><p class="calendar-date-p">05</p></li>
			<li><p class="calendar-date-p">06</p></li>
			<li><p class="calendar-date-p">07</p></li>
			<li><p class="calendar-date-p">08</p></li>
			<li><p class="calendar-date-p">09</p></li>
			<li><p class="calendar-date-p">10</p></li>
			<li><p class="calendar-date-p">11</p></li>

			<li><p class="calendar-date-p orange-bg">12</p></li>
			<li><p class="calendar-date-p yellow-bg">13</p></li>
			<li><p class="calendar-date-p yellow-green-bg">14</p></li>
			<li><p class="calendar-date-p turquoise-bg">15</p></li>
			<li><p class="calendar-date-p blue-bg">16</p></li>
			<li><p class="calendar-date-p rose-red-bg">17</p></li>
			<li><p class="calendar-date-p purple-bg">18</p></li>

			<li><p class="calendar-date-p">19</p></li>
			<li><p class="calendar-date-p">20</p></li>
			<li><p class="calendar-date-p">21</p></li>
			<li><p class="calendar-date-p">22</p></li>
			<li><p class="calendar-date-p">23</p></li>
			<li><p class="calendar-date-p">24</p></li>
			<li><p class="calendar-date-p">25</p></li>

			<li><p class="calendar-date-p">26</p></li>
			<li><p class="calendar-date-p red">27</p></li>
			<li><p class="calendar-date-p">28</p></li>
			<li><p class="calendar-date-p blue-bg">29</p></li>
			<li><p class="calendar-date-p" >30</p></li>
			<li><p class="calendar-date-p" ></p></li>
			<li><p class="calendar-date-p"></p></li>
		</ul>
	</div>

</div>

<div class="pop-class" id="pop-edit-class" style="display:none">
	<a href="javascript:void(0)" class="close" onClick="closeWindow('pop-edit-class')">×</a>
	<h3 class="date">2016-06-25</h3>
	<p class="title">请选择要管理的课程</p>
	<ul class="classes-ul">
		<li>
			<label class="day-of-week" for="Chinese">
				<input type="radio" id="Chinese" name="class" class="checkbox-week">
				<span class="orange">14:00</span>
				语文
			</label>
		</li>
		<li>
			<label class="day-of-week" for="English">
				<input type="radio" id="English" name="class" class="checkbox-week">
				<span class="orange">16:00</span>
				英语
			</label>
		</li>
	</ul>
	<p class="title">请选择要进行的操作</p>
	<ul class="operation-ul">
		<li><a href="javascript:void(0)">调课</a></li>
		<li><a href="javascript:void(0)">请假</a></li>
		<li><a href="javascript:void(0)">加课</a></li>
		<li><a href="javascript:void(0)">补课</a></li>
		<li class="holiday-delay"><a href="javascript:void(0)">公假顺延</a></li>
	</ul>
	
	<a href="javascript:void(0)" onClick="closeWindow('pop-edit-class');popup('pop-infor')" class="btn-submit">确定</a>
</div>

<div class="pop-class" id="pop-infor" style="display:none">
	<a href="javascript:void(0)" class="close" onClick="closeWindow('pop-infor')">×</a>
	<div class="tip-infor">恭喜您，操作成功！</div>
	<a href="javascript:void(0)" class="btn-submit" onClick="closeWindow('pop-infor')">确定</a>
</div>

<script>



    $(function () {
        var date = new Date();

        var currentCalendar = createMonthDay(date)

        drawDateCalendar(currentCalendar);

    });

    function createMonthDay(currentDate) {

        let daysOfMonth = [];
        let fullYear = new Date(currentDate).getFullYear();
        let month = new Date().getMonth() + 1;
        let lastDayOfMonth = new Date(fullYear, month, 0).getDate();
        for (var i = 1; i <= lastDayOfMonth; i++) {
            daysOfMonth.push(fullYear + '/' + month + '/' + i);
        };

        // console.log(daysOfMonth);
        return daysOfMonth;
    }

    function drawDateCalendar(currentCalendar) {
        $('#showlist').html('');
        console.log(new Date(currentCalendar[0]).getDay());
        var days = parseInt(new Date(currentCalendar[0]).getDay());  //取月份第一天是星期几
        //如果月份开头第一天不是周日，则补齐前面的空日
        if(days>0){
            for (var zeroDays=0;zeroDays<days;zeroDays++) {
                $('#showlist').append(
                        '<li><p class="calendar-date-p"></p></li>'
                );

            }
        }
        for (var j=0;j<currentCalendar.length;j++) {
            $('#showlist').append(
                '<li><p class="calendar-date-p" onclick="pop();">'+new Date(currentCalendar[j]).getDate()+'</p></li>'
            );
        }
    }

    function  pop(){
        popup('pop-edit-class');
    };

    !function(){
	$('.dates-ul p').click(function(){
		popup('pop-edit-class');
	});
	
	$('.day-of-week input').click(function(){
		$(this).parent().addClass('week-selected').parent().siblings().children().removeClass('week-selected');
	});
	
	$('.operation-ul a').click(function(){
		$(this).addClass('selected').parent().siblings().children().removeClass('selected');
	})
}();

</script>

</body>
</html>
