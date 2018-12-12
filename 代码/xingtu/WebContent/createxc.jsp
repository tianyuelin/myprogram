<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
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

	<link rel="stylesheet" href="${ctx }/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="${ctx }/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="${ctx }/kindeditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="${ctx }/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${ctx }/kindeditor/plugins/code/prettify.js"></script>
	<script>
		
	</script>

<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="move"></div>
<form action="${ctx }/strategy/create" method="post">
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
			<span style="margin-left: 7px;">添加目录</span>
		</div>
		<div id="dt"  onmouseover="deleteed4()" onmouseout="qdeeted4()">
			<img src="${ctx }/img/icon/delete.png" id="d4">
			<input type="file" style="opacity: 0; display: inline; width:5px;" id="uploadimg">
			<span>删除目录</span>
		</div>
		<!--  
		<div id="add_address"  onmouseover="jia4()" onmouseout="qjia4()" onclick="jia4()">
			<img src="${ctx }/img/icon/jia.png" id="jia4">
			<span style="margin-left: 7px;">添加地点</span>
		</div>
		<div id="add_text"  onmouseover="jia2()" onmouseout="qjia2()" onclick="jia2()">
			<img src="${ctx }/img/icon/jia.png" id="jia2">
			<span style="margin-left: 7px;">添加内容</span>
		</div>
		-->
		<!-- 
		<div id="add_img"  onmouseover="jia3()" onmouseout="qjia3()">
			<img src="${ctx }/img/icon/jia.png" id="jia3">
			<input type="file" style="opacity: 0; display: inline; width:5px;" id="uploadimg">
			<span>添加图片</span>
		</div>
		<div id="di"  onmouseover="deleteed()" onmouseout="qdeeted()">
			<img src="${ctx }/img/icon/delete.png" id="d1">
			<input type="file" style="opacity: 0; display: inline; width:5px;" id="uploadimg">
			<span>删除图片</span>
		</div>
		
		 
		<div id="dtext"  onmouseover="deleteed3()" onmouseout="qdeeted3()">
			<img src="${ctx }/img/icon/delete.png" id="d3">
			<input type="file" style="opacity: 0; display: inline; width:5px;" id="uploadimg">
			<span>删除内容</span>
		</div>
		<div id="da"  onmouseover="deleteed2()" onmouseout="qdeeted2()">
			<img src="${ctx }/img/icon/delete.png" id="d2">
			<input type="file" style="opacity: 0; display: inline; width:5px;" id="uploadimg">
			<span>删除地点</span>
		</div>
		-->
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
		<div id="xingcheng">
		<div id="part0">
		<div class="ltitle">
		<input type="text" class="f_title" placeholder="前言" onchange="changetitle()" id="title0" name="ltitle">
		</div>
			<div id="didian0" class="didian">
				<img src="${ctx }/img/icon/dizhi.png">
				<input class="address" type="text" placeholder='添加地点' id="didian0" onchange="changeaddress()" name="address">
			</div>
			<div class="neirong">
			<textarea id="content0" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;" name="text"></textarea>
			<!--
			<textarea maxlength="2000" onkeydown="this.value=this.value.substring(0,2000)" onkeyup="this.value=this.value.substring(0,2000)" name="context">记录下这段旅途中那些美好的点点滴滴吧~</textarea>
              -->
            </div>
            <!-- 
            <input type="file"  name="file" id="doc0" multiple="multiple" onchange="javascript:setImagePreviews();" accept="image/*" />
     		<div id="dd0"></div>
     		 -->
     		</div>
		</div>
		<div><input type="submit" value="创建行程"></div>

</div>
</div>
</form>	
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
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>