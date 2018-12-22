<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
<link rel="stylesheet" href="${ctx }/css/user/demo.css"/>
<link rel="stylesheet" href="${ctx }/css/user/cropper.min.css"/>
<title>${user.username }</title>
<link href="${ctx }/css/user/myhead.css" rel="stylesheet"/>
<link href="${ctx }/css/home/header.css" rel="stylesheet"/>
<link href="${ctx }/css/phototest/main.css" rel="stylesheet"/>
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet"/>
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script src="${ctx }/js/phototest/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header"  style="margin-top:5%">
		<div class="main-zt">
			<div class="user-info">
				<dt class="flpic">
					<img
						src="${ctx }/${user.icon }" />
				</dt><!-- 个人头像 -->
				<dd class="flintro">
					<h3 class="intro-title">
						<span class="name" title="QTL">${user.username }</span>
					</h3>
					<div class="intro-body">
						<form action="">
						    <input type="text" placeholder="编辑个人签名" style="width:400px;"/>
						</form>
					</div>
				</dd>
			</div>
			<div class="fruser-fans">
				<div class="fz">
					<div class="shu">${followedcount }</div>
					<div class="guzh">关注</div>
				</div>
				<div class="hz">|</div>
				<div class="fy">
					<div>${funscount }</div>
					<div>粉丝</div>
				</div>
			</div>
		</div>
		<div class="mynav">
			<ul id="mydao">
				<li class="item item-hover item-active" data-beacon="myhomepage"><a
					href="user.jsp">首页</a></li>
				<li class="item"><a
					href="photo.jsp"
					data-beacon="photos">相册</a></li>
				<li class="item"><a
					href="sixin.jsp"
					data-beacon="letter">消息</a></li>
				<li class="item"><a
					href="person.jsp"
					data-beacon="letter">个人信息</a></li>
				<li class="item"><a
					href="createxingcheng.jsp"
					data-beacon="letter">创建行程</a></li>
				<li class="item"><a
					href="createyouji.jsp"
					data-beacon="letter">创建攻略</a></li>
			</ul>
		</div>
	</div>
	<ul class="cd-items cd-container">
		<li class="cd-item">
			<a href="${ctx }/upphoto.jsp"><img src="${ctx }/img/up.png" width="250px" height="250px" style="margin: 10px;"/></a>
		</li> <!-- cd-item -->
		<c:forEach items="${photos }" var="photo">
		<li class="cd-item">
			<img src="${ctx }/${photo.src}" class="photo" alt="" width="250px" height="250px" style="margin: 10px;"/>
			<a href="#0" class="cd-trigger">陈意涵</a>
		</li> <!-- cd-item -->
		</c:forEach>
	</ul>
	<div class="cd-quick-view">
		<div class="cd-slider-wrapper">
			<ul class="cd-slider">
				<li class="selected"><img src="img/item-1.jpg" alt="Product 1"/></li>
				<li><img src="img/item-2.jpg" alt="Product 2"/></li>
				<li><img src="img/item-3.jpg" alt="Product 3"/></li>
			</ul> <!-- cd-slider -->
			<ul class="cd-slider-navigation">
				<li><a class="cd-next" href="#0">Prev</a></li>
				<li><a class="cd-prev" href="#0">Next</a></li>
			</ul> <!-- cd-slider-navigation -->
		</div> <!-- cd-slider-wrapper -->
		<div class="cd-item-info">
			<h2>意涵</h2>
			<p>1982年11月12日陈意涵出生于台湾新北市土城区，2002年参加《我猜我猜我猜猜猜》中“漫画美少女”选拔单元。[10]  2006年大学毕业后在餐厅打零工被星探发掘正式进入演艺圈。[11] </p>
		</div> <!-- cd-item-info -->
		<a href="#0" class="cd-close">Close</a>    
	</div> <!-- cd-quick-view -->
	
	<!--  div style="margin-bottom: 25px;margin-left: 15px;">
		<a href="${ctx }/upphoto.jsp"><img src="${ctx }/img/up.png" width="250px" height="250px" style="margin: 10px;"/></a>
		<c:forEach items="${photos }" var="photo">
			<img src="${ctx }/${photo.src}" class="photo" alt="" width="250px" height="250px" style="margin: 10px;"/>
		</c:forEach>
	</div-->
	<!-- 测试：点击出来弹框，表单的提交 -->
	<span id="tankuang">弹框</span>
	<table id="miaoshu" style="width: 100%;height: 100%;margin: auto; display: none;background-color: rgba(125,125,125,0.5);">
		<tr>
			<td>
				<div class="addmiaoshu">
					
				</div>
			</td>
		</tr>
	</table>
	
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</body>
</html>

<script src="${ctx }/js/phototest/jquery-2.1.1.js"></script>
<script src="${ctx }/js/phototest/velocity.min.js"></script>
<script src="${ctx }/js/phototest/main.js"></script> <!-- Resource jQuery -->
<script src="${ctx }/js/phototest/photo.js"></script>