<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="/class/classlist.html" class="class">课程</a></li>
		<li><a href="/class/classaddbefore.html" class="add">添加课程</a></li>
		<li class="current"><a href="mine.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	<a href="student/addStudentBefore.html" class="add-student">新学员</a>
	我的
</header>



<div class="class-wrap">
	<h2 class="student-overview">
		<%--<a href="" class="btn-student fr pad-5">管理所有课程</a>--%>
		<b><%--${student.name}--%></b>
            <b><span class="id">学号：<%--${student.sno}--%></span></b>
	</h2>

        <ul class="subject-wrap">
           <%-- <li class="subject">
                <a href="javascript:void(0)" class="name-settings">
                   &lt;%&ndash; ${classInfo.classname} &ndash;%&gt;  展开
                </a>
                <a href="/class/classchildlist.html">详情</a>

            </li>--%>
            <li class="subject-detail">
               <%-- <ul class="time-ul">
                    <li class="start-over">开始时间：${classInfo.begintime}&lt;%&ndash;<em class="green">2016</em>年<em class="green">4</em>月<em class="green">10</em>日&ndash;%&gt;</li>
                    <li class="start-over">结束时间：${classInfo.endtime}&lt;%&ndash;<em class="green">2017</em>年<em class="green">1</em>月<em class="green">1</em>日&ndash;%&gt;</li>
                </ul>--%>
                <ul class="changes">
                    <li class="little-changes"><i>请假：</i><em><span class="green"><%--${classInfo.leavenum}--%></span>次</em></li>
                </ul>
            </li>
        </ul>


</div>

<script>
	!function(){
		
		var picWrap = $('.student-pic');
		var showWidth = picWrap.width();
		var showHeight = picWrap.height();
		
		$('.student-pic img').each(function(index, element) {
			if( $(element).width() > $(element).height()){
				$(element).height(showHeight)
			}else{
				$(element).width(showWidth)
			}
		});
		
	}();
	
	
</script>
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
