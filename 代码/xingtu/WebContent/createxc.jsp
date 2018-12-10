<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
    <link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/css/home/header.css" rel="stylesheet">
    <link href="${ctx }/css/user/xingcheng.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="move"></div>
<div class="header">
	<div class="title">
	<img alt="" src="img/tou6.jpg">
	<input type="text" name="title" placeholder="为你的游记起一个名字吧!" class="title_text"/>
	</div>
</div>
<div class="create">
	<div class="create_left">
		<div id="add_f_title"  onmouseover="jia()" onmouseout="qjia()">
			<img src="img/icon/jia.png" id="jia1">
			<span>添加小标题</span>
		</div>
	</div>
	<div id="create_right">
	<form action="" id="xingcheng">
		<div class="ltitle">
		<input type="text" class="f_title" placeholder="前言">
		</div>
		<div class="context">
			<div class="didian">
				<img src="img/icon/dizhi.png">
				<input class="address" type="text" placeholder='添加地点'>
			</div>
			<div class="neirong">
			<p class="pl_tcp">记录下这段旅途中那些美好的点点滴滴吧~</p>
			 <textarea class="tcp_content" maxlength="2000" onchange="this.value=this.value.substring(0,2000)"onkeydown="this.value=this.value.substring(0,2000)" onkeyup="this.value=this.value.substring(0,2000)"></textarea>
            <span class="t_h"><i>0</i>/2000</span>
            <span class="btn btn-success fileinput-button">
            <span>上传图片</span>
            <input type="file" name="img">
       		</span>
            </div>
		</div>
	</form>
	</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script src="${ctx }/js/user/jquery.min.js"></script>
<script src="${ctx }/js/user/xingcheng.js"></script>
