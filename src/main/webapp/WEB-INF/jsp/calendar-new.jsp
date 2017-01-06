<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<!doctype html>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
        <li><a href="/class/classlist.html" class="class">课程</a></li>
        <li><a href="/class/classaddbefore.html" class="add">添加课程</a></li>
        <li class="current"><a href="classlist.html" class="mine current">我的</a></li>
	</ul>
</div>

<div class="fix-head">
	<header class="top-bar">
		<a href="javascript:history.go(-1);" class="icon-return"></a>
		课程日历
	</header>
	
</div>

<div class="calendar-wrap">
	<div class="one-month">
		<div class="year-month"><span><b><a href="javascript:getSubtractionMonth()">-</a></b></span> <span id="viewYear">2016</span>年<span id="viewMonth">6</span>月 <span onClick=""><b><a href="javascript:getAddMonth();">+</a></b></span></div>
		<ul class="days-head">
		<li>日</li>
		<li>一</li>
		<li>二</li>
		<li>三</li>
		<li>四</li>
		<li>五</li>
		<li>六</li>
	</ul>
		<ul class="dates-ul"  id="showlist">
		</ul>
	</div>

</div>

<%--增加课程弹层--%>
<div class="pop-class" id="pop-add-class" style="display:none">
    <a href="javascript:void(0)" class="close" onClick="closeWindow('pop-add-class')">×</a>
    <h3 class="date" name="viewdatedayadd" id="viewdatedayadd">2016-06-25</h3>
    <p class="title">请选择课程和时间</p>
    <ul class="classes-ul" id="childadd">
        <div class="form-wrap">
            <ul class="inputs-ul">
                <li class="one-item">
                    <label class="tit">上课时间：</label>
                    <input type="text" name="classtime"  id="classtime" class="i-txt">
               </li>
                <li class="one-item">
                    <label class="tit">课程：</label>
                    <select id="classNameId" name="classNameId">

                    </select>
                </li>
            </ul>
        </div>
    </ul>
    <a href="javascript:void(0)" onClick="addClass();closeWindow('pop-add-class');popup('pop-infor')" class="btn-submit">确定</a>
</div>


<%--修改课程弹层--%>
<div class="pop-class" id="pop-edit-class" style="display:none">
    <a href="javascript:void(0)" class="close" onClick="closeWindow('pop-edit-class')">×</a>
    <h3 class="date" id="viewdateday">2016-06-25</h3>
    <p class="title">请选择要管理的课程</p>
    <ul class="classes-ul" id="childlist">
       <%-- <li>
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
        </li>--%>
    </ul>
    <p class="title">请选择要进行的操作</p>
    <ul class="operation-ul">
        <li><a href="javascript:upDate();">调课</a></li>
     <%--   <li><a href="javascript:void(0)">请假</a></li>--%>
        <li><a href="javascript:pop(0,'${sid}',0);closeWindow('pop-edit-class')">加课</a></li>
<%--        <li><a href="javascript:void(0)">补课</a></li>
        <li class="holiday-delay"><a href="javascript:void(0)">公假顺延</a></li>--%>
    </ul>

    <a href="javascript:void(0)" onClick="closeWindow('pop-edit-class');popup('pop-infor')" class="btn-submit">确定</a>
</div>

<div class="pop-class" id="pop-infor" style="display:none">
	<a href="javascript:void(0)" class="close" onClick="closeWindow('pop-infor')">×</a>
	<div class="tip-infor">恭喜您，操作成功！</div>
	<a href="javascript:void(0)" class="btn-submit" onClick="closeWindow('pop-infor')">确定</a>
</div>



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

<script>


    $(function () {
        var date = new Date();
        var fullYear = date.getFullYear();
        var month = date.getMonth() + 1;

        $('#viewYear').html(fullYear);
        $('#viewMonth').html(month);
        var currentCalendar = createMonthDay(date)
        var dateStr = fullYear+"-"+month+"-" +"1";
        drawDateCalendar(currentCalendar,dateStr);




    });

    function getAddMonth(){

        var month = $('#viewMonth').html();
        var year =   $('#viewYear').html();

        var newMonth = parseInt(month)+1;
        var newYear = parseInt(year);

        if(newMonth>12){
            newMonth = 1;
            newYear = newYear+1;
        }
        var dateStr = newYear+"-"+newMonth+"-" +"1";
        $('#viewYear').html(newYear);
        $('#viewMonth').html(newMonth);
        var newCurrentCalendar = newYear+"/" + newMonth + "/" + "1";
        var currentCalendar = createMonthDay(new Date(newCurrentCalendar));
        drawDateCalendar(currentCalendar,dateStr);
    }

    function getSubtractionMonth(){
        var month = $('#viewMonth').html();
        var year =   $('#viewYear').html();
        var newMonth = parseInt(month)-1;
        var newYear = parseInt(year);


        if(newMonth<1){
            newMonth = 12;
            newYear = newYear-1;
        }
        var dateStr = newYear+"-"+newMonth+"-" +"1";
        $('#viewYear').html(newYear);
        $('#viewMonth').html(newMonth);

        var newCurrentCalendar = newYear+"/" + newMonth + "/" + "1";

        //alert(newCurrentCalendar);
        var currentCalendar = createMonthDay(new Date(newCurrentCalendar));
        drawDateCalendar(currentCalendar,dateStr);
    }

    //取当前月的所有日期
    function createMonthDay(currentDate) {

        let daysOfMonth = [];
        let fullYear = currentDate.getFullYear();
        let month = currentDate.getMonth() + 1;
        let lastDayOfMonth = new Date(fullYear, month, 0).getDate();
        for (var i = 1; i <= lastDayOfMonth; i++) {
            daysOfMonth.push(fullYear + '/' + month + '/' + i);
        };

        // console.log(daysOfMonth);
        return daysOfMonth;
    }



    function drawDateCalendar(currentCalendar,dateStr) {
       $('#showlist').html('');
        console.log(new Date(currentCalendar[0]).getDay());
        var days = parseInt(new Date(currentCalendar[0]).getDay());  //取月份第一天是星期几
        //取这个月第一天的所有日程
        var  classListJson="";
        $.ajax({
            type: 'post',
            url: "/class/listClassByMonth.json",
            dataType: 'json',
            async: false,
            data: {
                checkDate: dateStr,
                sid: ${sid}
            },
            success: function (data) {
                console.log('success');
                classListJson = data;
            },
            error: function (data) {
                console.log('出现错误，请重新操作！');
            }
        });

        //如果月份开头第一天不是周日，则补齐前面的空日
        if(days>0){
            for (var zeroDays=0;zeroDays<days;zeroDays++) {
                $('#showlist').append(
                        '<li><p class="calendar-date-p"></p></li>'
                );
            }
        }

        for (var j=0;j<currentCalendar.length;j++) {
            var txt ='';
            var no = parseInt(j+1);

            $.each(classListJson, function (index, cinfo) {
                //如果日期相等，加入课程项

                //如果日期不相等，显示日期
                var viewDate = cinfo.classdatetime;
                var viewDateArr = viewDate.split(' ');
                var viewDateArrDate = viewDateArr[0].split('-');
                var viewDay = parseInt(viewDateArrDate[2]);
                if (viewDay == no) {
                    txt =txt +  (cinfo.classTimeMain.classname).substr(0,1);
                }
            });
            var dataStrArr  = currentCalendar[j].split("/");
            var dataStr =  dataStrArr[0]+"-"+dataStrArr[1]+"-"+dataStrArr[2];
            var flag = '0';

            if(txt!=''){
                flag='1';
                txt='<div>课</div>';
            }


            $('#showlist').append(
                 '<li><p class="calendar-date-p" onclick="pop(\''+ flag+'\',' + ${sid}+',\''+ dataStr +'\');" id="day_'+no+'">'+new Date(currentCalendar[j]).getDate()+txt +'</p></li>'
            );
        }
    }

        function  pop(flag,sid,childDate){
            //根据传过来的日期和sid获取当前用户当天课程

            if(flag=='0') {  //当天没课程 ，弹出增加课程层
                if (childDate == 0) {
                    $('#viewdatedayadd').html($('#childDate').val());
                }
                else {
                    $('#viewdatedayadd').html(childDate);
                }


            $.ajax({
                type: 'post',
                url: "/class/listClassByAdd.json",
                dataType: 'json',
                async: false,
                data: {
                    sid: sid
                },
                success: function (data) {
                    console.log('pop windows success');
                    $("#classNameId").empty();
                    if (data != null) {
                        $.each(data, function (index, cinfo) {
                            $('#classNameId').append(
                                    '<option value="'+cinfo.id+'" selected="selected">'+cinfo.classname+'</option>'
                            );

                        });
                    }
                    else {

                    }
                },
                error: function (data) {
                    console.log('出现错误，请重新操作！');
                }
            });
            popup('pop-add-class');
        }
        else {
           $('#viewdateday').html(childDate);
            $.ajax({
                type: 'post',
                url: "/class/listClassByDay.json",
                dataType: 'json',
                async: false,
                data: {
                    checkDate: childDate,
                    sid: sid
                },
                success: function (data) {
                    console.log('pop windows success');
                    if (data != null) {
                        $('#childlist').html("")
                        $.each(data, function (index, cinfo) {
                            $('#childlist').append(
                                            '<li>' +
                                            '<label class="day-of-week">' +
                                            '<input type="radio" id="childid" name="childid"  value="'+cinfo.id+'">' +
                                            '<input type="hidden" id="childDate" name="childDate" value="'+childDate+'">' +
                                            '<span class="orange">' + cinfo.classdatetime.split(" ")[1] + '</span>' +
                                            cinfo.classTimeMain.classname +
                                            '</label>' +
                                            '</li>'
                            );

                        });
                    }
                    else {

                    }
                },
                error: function (data) {
                    console.log('出现错误，请重新操作！');
                }
            });

              //  $("body").delegate(".calendar-date-p","click", function(){
                    popup('pop-edit-class');
              //  });


        }



    };



    function addClass() {


        var classDate = $("#viewdatedayadd").html();
        var classTime = $("#classtime").val();
        var classNameId = $("#classNameId").val();

        $.ajax({
            type: 'post',
            url: "/class/addClass.json",
            dataType: 'json',
            data: {
                classDate: classDate,
                classTime: classTime,
                classNameId: classNameId
            },
            success: function (data) {
                console.log('add success');
                location.reload();
            },
            error: function () {
                console.log('出现错误，请重新操作！');
            }
        });

    }

    function upDate(){
       var childid =  $("input[name='childid']:checked").val();


        alert(childid);

        $.ajax({
            type: 'post',
            url: "/class/delClass.json",
            dataType: 'json',
            data: {
                childid: childid
            },
            success: function (data) {
                console.log('del success');
                //alert("update success!");
                location.reload();
            },
            error: function () {
                console.log('出现错误，请重新操作！');
            }
        });

    }

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
