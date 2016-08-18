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


<c:forEach items="${studentList}" var="student"  varStatus="status">
<div class="class-wrap">
	<h2 class="student-overview">
		<%--<a href="" class="btn-student fr pad-5">管理所有课程</a>--%>
		<b>${student.name}</b>
            <b><span class="id">学号：${student.sno}</span></b>
	</h2>

    <c:if test="${not empty student.classTimeMainList}">

        <c:forEach items="${student.classTimeMainList}" var="classInfo"  varStatus="status">
        <ul class="subject-wrap">
            <li class="subject">
                <a href="javascript:void(0)" class="name-settings">
                    ${classInfo.classname}   展开
                </a>
                <a href="/class/classchildlist/${classInfo.id}">详情</a>

                <a href="javascript:void(0)" class="slide-up slide-switch"></a>
                共<em class="green"> ${classInfo.sumnum}</em>次课  剩余<em class="green"> ${classInfo.num}</em>次课
            </li>
            <li class="subject-detail">
                <ul class="time-ul">
                    <li class="start-over">开始时间：${classInfo.begintime}<%--<em class="green">2016</em>年<em class="green">4</em>月<em class="green">10</em>日--%></li>
                    <li class="start-over">结束时间：${classInfo.endtime}<%--<em class="green">2017</em>年<em class="green">1</em>月<em class="green">1</em>日--%></li>
                </ul>
                <ul class="changes">
                    <li class="little-changes"><i>请假：</i><em><span class="green">${classInfo.leavenum}</span>次</em></li>
                    <li class="little-changes"><i class="bigger">调课：</i><em><span class="green">${classInfo.changenum}</span>次</em></li>
                    <li class="little-changes"><i>补课：</i><em><span class="green">${classInfo.makeupnum}</span>次</em></li>
                    <li class="little-changes"><i class="bigger">假期顺延：</i><em><span class="green">${classInfo.extendednum}</span>次</em></li>
                </ul>
            </li>
        </ul>
        </c:forEach>
    </c:if>
</div>
</c:forEach>
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
