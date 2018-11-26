<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="css/user/demo.css">
<link rel="stylesheet" href="css/user/cropper.min.css">
<title>QTL的空间</title>
<link href="css/user/myhead.css" rel="stylesheet">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header"  style="margin-top:5%">
		<div class="main-zt">
			<div class="user-info">
				<dt class="flpic">
					<img
						src="img/tou2.jpg" />
				</dt><!-- 个人头像 -->
				<dd class="flintro">
					<h3 class="intro-title">
						<span class="name" title="QTL">QTL</span><span class="score"><a
							target="_blank"
							href="#">100积分</a></span>
					</h3>
					<div class="intro-body">
						<div class="view" data-beacon="signature">
							<span class="view-text">编辑个人签名</span><span class="view-ico"></span>
						</div>
						<div class="edit">
							<textarea style="height:30px;width:200px"></textarea>
						</div>
					</div>
				</dd>
			</div>
			<div class="fruser-fans">
				<div class="fz">
					<div class="shu">0</div>
					<div class="guzh">关注</div>
				</div>
				<div class="hz">|</div>
				<div class="fy">
					<div>0</div>
					<div>粉丝</div>
				</div>
			</div>
		</div>
		<div class="mynav">
			<ul class="clrfix">
				<li class="item item-hover item-active" data-beacon="myhomepage"><a
					href="user.jsp">首页</a></li>
				<li class="item"><a
					href="youji.jsp"
					data-beacon="youji">游记</a></li>
				<li class="item"><a
					href="xingcheng.jsp"
					data-beacon="plan">行程</a></li>
				<li class="item"><a
					href="shoucang.jsp"
					data-beacon="favorites">收藏</a></li>
				<li class="item"><a
					href="comment.jsp"
					data-beacon="comments">评论</a></li>
				<li class="item"><a
					href="photo.jsp"
					data-beacon="photos">相册</a></li>
				<li class="item"><a
					href="sixin.jsp"
					data-beacon="letter">私信</a></li>
				<li class="item"><a
					href="person.jsp"
					data-beacon="letter">个人信息</a></li>
			</ul>
		</div>
	</div>
	<div style="margin-bottom:25px">
	<form class="pure-form" action="" method="post">
			<!-- 上传图片的预览区域 -->
			<section class="upload-box" id="J_upload_box" style="margin-left:310px">
				<div class="upload" id="J_file_wrap">
					<input type="file" accept="image/*" name="pic" id="J_file">
				</div>
			</section>
			<a class="pure-button pure-button-primary">提交</a>
	</form>
	</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
		<script src="js/user/jquery.min.js"></script>
		<script src="js/user/upload.js"></script>
		<script src="js/user/demo.js"></script>
	</body>
</html>
