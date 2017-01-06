<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<%@ include file="/common/include.jsp" %>
<html>
<body>
<div class="fix-bottom">
	<ul class="menu-ul">
		<li><a href="/class/classlist.html" class="class">课程</a></li>
		<li><a href="/class/classaddbefore.html" class="add">添加课程</a></li>
        <li class="current"><a href="classlist.html" class="mine current">我的</a></li>
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
            <b><span class="uname">姓名：<%--${student.sno}--%></span></b>
            <b><span class="uclass">课程：<%--${student.sno}--%></span></b>
	</h2>

        <ul class="subject-wrap">
           <%-- <li class="subject">
                <a href="javascript:void(0)" class="name-settings">
                   &lt;%&ndash; ${classInfo.classname} &ndash;%&gt;  展开
                </a>
                <a href="/class/classchildlist.html">详情</a>

            </li>--%>
            <li class="subject-detail">

                <ul class="changes" id="ttt">
                    <li  class="little-changes"><i>上课时间</i><em><span class="green">状态</span></em><em><span class="green">操作</span></em></li>

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



<script>

    $(function () {
        $.ajax({
            type: "get",
            url: "/class/classchildlist.json",
            dataType: "json",
            data: {
                mid : ${mid}
            },
            success: function (data) {
                $('#ttt').html('');
                //var list = data[0].classTimeChildList;
                var list = data;
                //alert(list[0].classTimeChildList);
                $('#ttt').append('<li class="little-changes"><i>上课时间</i><em><span class="green">状态</span></em><em><span class="green"><a href="">操作</a></span></em></li>');
                if (null != list && list != '{}') {

                    $.each(list, function (i, obj) {
                        if (obj.id != 0) {
                            $('#ttt').append('<li class="little-changes"><i>'+obj.classdatetime+ '</i><em><span class="green">未上</span></em><em><span class="green"><a href="">请假</a></span></em></li>');
                        }
                    });
                }
            },
            error: function () {
                alert("获取列表失败!");
            }

        })
    });



</script>
</body>
</html>
