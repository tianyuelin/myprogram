<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="${ctx }/css/user/demo.css">
<link rel="stylesheet" href="${ctx }/css/user/cropper.min.css">
<title>QTL的空间</title>
<link href="${ctx }/css/user/myhead.css" rel="stylesheet">
<link href="${ctx }/css/user/pho.css" rel="stylesheet">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${ctx }/css/user/home.css">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script type="text/javascript" src="${ctx }/js/user/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/js/user/up.js"></script>
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
						    <input type="text" placeholder="编辑个人签名" style="width:400px;">
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
	<div style="margin-bottom: 25px" class="phzt">
		<div class="aui-form-input">
			<div class="aui-content-img-box aui-content-full">
				<div class="aui-photo aui-up-img clear">
					<section class="aui-file-up fl"> <img src="${ctx }/img/up.png"
						class="add-img"> <input type="file" name="file" id="file"
						class="file" value="" multiple /></section>
				</div>
			</div>
		</div>
	</div>
	<div class="aui-mask aui-works-mask">
            <div class="aui-mask-content">
                <p class="aui-delete-text">确定要删除你上传的资料？</p>
                <p class="aui-check-text">
                    <span class="aui-delete aui-accept-ok">确定</span>
                    <span class="aui-accept-no">取消</span>
                </p>
            </div>
        </div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
		<script src="${ctx }/js/user/jquery.min.js"></script>
		<script src="${ctx }/js/user/upload.js"></script>
		<script src="${ctx }/js/user/demo.js"></script>
	</body>
</html>
