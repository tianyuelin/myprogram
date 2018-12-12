<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${ctx }/js/user/upload1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
    <link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/css/home/header.css" rel="stylesheet">
    <link href="${ctx }/css/user/xingcheng.css" rel="stylesheet">
    <script src="${ctx }/js/user/xingcheng.js"></script>
<link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
<link href="${ctx }/dist/summernote.css" rel="stylesheet"/>

<script src="${ctx }/js/jquery.min.js"></script>
<script src="${ctx }/js/bootstrap.min.js"></script>
<script src="${ctx }/dist/summernote.js"></script>
<script src="${ctx }/dist/lang/summernote-zh-CN.js"></script>    <!-- 中文-->

<style>
	.m{ width: 100%; margin-left: auto; margin-right: auto; }
</style>


<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="move"></div>
<div class="header">
	<div class="title">
	<img alt="" src="${ctx }/${user.icon }">
	<input type="text" name="title" placeholder="为你的游记起一个名字吧!" class="title_text"/>
	</div>
</div>
<div class="create">
	<div class="create_left">
		<div id="add_f_title"  onmouseover="jia()" onmouseout="qjia()" onclick="jia()" >
			<img src="${ctx }/img/icon/jia.png" id="jia1">
			<span>添加小标题</span>
		</div>
		<div id="delete"  onmouseover="deleteed()" onmouseout="qdeeted()" onclick="deleteed()" >
			<img src="${ctx }/img/icon/delete.png" id="deleted">
			<span>删除小标题</span>
		</div>
		<div class="mulu">
			<h3>游记概览</h3>
			<div id="gailan">
			<div id="g0">
			<span>T：</span><span id="ltitle0" class="lt">前言</span><br>
			<span>地点：</span><span id="dizhi0" class="dz">add0</span><br>
			</div>
			</div>
		</div>
	</div>
	<div id="create_right">
	<form action=""  enctype="multipart/form-data">
		<div id="xingcheng">
		<div class="part">
		<div class="ltitle">
		<input type="text" class="f_title" placeholder="前言" onchange="changetitle()" id="title0">
		</div>
		<div class="context0">
			<div class="didian">
				<img src="${ctx }/img/icon/dizhi.png">
				<input class="address" type="text" placeholder='添加地点' id="didian0" onchange="changeaddress()">
			</div>
			<div class="neirong">
			<p id="pl_tcp0">记录下这段旅途中那些美好的点点滴滴吧~</p>
			 <textarea id="tcp_content0" maxlength="2000" onchange="this.value=this.value.substring(0,2000)"onkeydown="this.value=this.value.substring(0,2000)" onkeyup="this.value=this.value.substring(0,2000)"></textarea>
            <input type="file"  name="file" id="doc0" multiple="multiple" onchange="javascript:setImagePreviews();" accept="image/*" />
     		<div id="dd0"></div>
     		</div>
            </div>
		</div>
		</div>
		<div><input type="submit" value="创建行程"></div>
	</form>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script src="${ctx }/js/user/ajaxfileupload.js"></script>
<script src="${ctx }/js/user/xingcheng.js"></script>
<script src="${ctx }/js/user/upload1.js"></script>
