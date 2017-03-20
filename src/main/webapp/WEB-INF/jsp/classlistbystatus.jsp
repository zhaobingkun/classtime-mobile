<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="/class/classlist.html" class="class">课程</a></li>
		<li><a href="/class/classaddbefore.html" class="add">添加课程</a></li>
        <li class="current"><a href="/class/classlist.html" class="mine current">我的</a></li>
	</ul>
</div>

<header class="top-bar">
	<a href="/student/addStudentBefore.html" class="add-student">新学员</a>
	我的
</header>



<div class="class-wrap">
<%--
	<h2 class="student-overview">
		<b>${student.name}</b>
            <b><span class="id">学号：${student.sno}</span></b>
           <a href="/calendar/${student.id}"  class="btn-student fr pad-5">日历</a>
	</h2>
--%>

        <c:forEach items="${list}" var="class">
        <ul class="subject-wrap">
            <li class="subject-detail">
                <ul class="time-ul">
                    <li class="start-over">时间：
                        <fmt:formatDate value="${class.classdatetime}" pattern="yyyy年MM月dd日"/>
                    </li>
<%--                    <li class="start-over">

                   </li>--%>
                </ul>
            </li>
        </ul>
        </c:forEach>

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
<script>
    function delClass(mid){


        $.ajax({
            type: "post",
            url: "/class/delMainClass.json",
            dataType: "json",
            data: {
                mid :mid
            },
            success: function (data) {
                location.reload()
            },
            error: function () {
                alert("获取列表失败!");
            }
        })



    }
    </script>
</body>
</html>
