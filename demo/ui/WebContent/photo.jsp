<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="css/user/demo.css">
<link rel="stylesheet" href="css/user/cropper.min.css">
<title>祈墨墨的空间</title>
<link type="text/css" rel="stylesheet"
	href="//q.qunarzz.com/travel_space/prd/styles/home@3a3e37fd910d98c79c626078b0de759e.css" />
<script type="text/javascript">
	var USER_ID = '294954399@qunar';
	var USER_ID_INT = '294954399';
	var PRE_SID = '725';
</script>
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header">
		<div class="main clrfix">
			<div class="fl user-info clrfix">
				<dt class="fl pic">
					<img
						src="https://qcommons.qunar.com/headshot/headshotsById/294954399.png?l&amp;ssl=true" />
				</dt><!-- 个人头像 -->
				<dd class="fl intro">
					<h3 class="intro-title">
						<span class="name" title="祈墨墨">祈墨墨</span><span class="score"><a
							target="_blank"
							href="#">100积分</a></span>
					</h3>
					<div class="intro-body">
						<div class="view" data-beacon="signature">
							<span class="view-text">编辑个人签名</span><span class="view-ico"></span>
						</div>
						<div class="edit">
							<textarea maxlength="80"></textarea>
							<div class="err-msg"></div>
						</div>
					</div>
				</dd>
			</div>
			<div class="fr user-fans">
				<dl>
					<dt>
						<a
							href="//travel.qunar.com/space/follow/list?userId=294954399@qunar"
							data-beacon="guanzhu">0</a>
					</dt>
					<dd>关注</dd>
					<dd>
						<a class="link_to"
							href="//travel.qunar.com/space/follow/list?userId=294954399@qunar"></a>
					</dd>
				</dl>
				<span class="gray">|</span>
				<dl>
					<dt>
						<a
							href="//travel.qunar.com/space/follow/fans/list?userId=294954399@qunar"
							data-beacon="fans">0</a>
					</dt>
					<dd>粉丝</dd>
					<dd>
						<a class="link_to"
							href="//travel.qunar.com/space/follow/fans/list?userId=294954399@qunar"></a>
					</dd>
				</dl>
			</div>
		</div>
		<div class="nav">
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
			</ul>
		</div>
	</div>
	<form class="pure-form" action="" method="post">
			<!-- 上传图片的预览区域 -->
			<section class="upload-box" id="J_upload_box">
				<div class="upload" id="J_file_wrap">
					<input type="file" accept="image/*" name="pic" id="J_file">
				</div>
			</section>
			<a class="pure-button pure-button-primary">提交</a>
		</form>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
		<script src="js/user/jquery.min.js"></script>
		<script src="js/user/upload.js"></script>
		<script src="js/user/demo.js"></script>
	</body>
</html>
