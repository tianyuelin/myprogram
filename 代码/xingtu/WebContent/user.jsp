<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QTL的空间</title>
<link href="css/user/myuse.css" rel="stylesheet">
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
	<div class="qn-skin">
		<div class="qn-page">
			<div class="mainboxclrfix">
				<div class="flmainbox-left">
					<div class="b-home-detail">
						<div class="b-fansb-home-fans">
							<h2 class="tit-traveller">TA们都是聪明旅行家</h2>
							<ul class="fans-listclrfix">
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/1837996@qunar"
												target="_blank"><img
												src="img/tou5.jpg" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/1837996@qunar"
													target="_blank">任紫玉</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/1837996@qunar"
													target="_blank">游记<span class="notes">30</span></a><a
													href="//travel.qunar.com/space/books/1837996@qunar"
													target="_blank">行程<span class="plan">1</span></a><a
													href="//travel.qunar.com/space/comments?userId=1837996@qunar"
													target="_blank">评论<span class="comment">33</span></a>
											</div>
											<p class="introduce">旅行摄影自由撰稿人，旅行达人。新...</p>
										</dd>
									</dl>
									<a data-uid="1837996@qunar" href="#" class="js-follow care-btn"></a><a
									href="#" class="private-btn" data-ui="privateMsg"
									data-uid="1837996" data-username="任紫玉"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/123316122@qunar"
												target="_blank"><img
												src="img/tou10.png" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/123316122@qunar"
													target="_blank">小达叔叔</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/123316122@qunar"
													target="_blank">游记<span class="notes">5</span></a><a
													href="//travel.qunar.com/space/books/123316122@qunar"
													target="_blank">行程<span class="plan">1</span></a><a
													href="//travel.qunar.com/space/comments?userId=123316122@qunar"
													target="_blank">评论<span class="comment">48</span></a>
											</div>
											<p class="introduce">于我而言，旅行，重要的不是沿途的...</p>
										</dd>
									</dl>
									<a data-uid="123316122@qunar" href="#"
									class="js-follow care-btn"></a><a href="#" class="private-btn"
									data-ui="privateMsg" data-uid="123316122" data-username="小达叔叔"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/298229@qunar"
												target="_blank"><img
												src="img/tou6.jpg" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/298229@qunar"
													target="_blank">不旅不婷</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/298229@qunar"
													target="_blank">游记<span class="notes">11</span></a><a
													href="//travel.qunar.com/space/books/298229@qunar"
													target="_blank">行程<span class="plan">2</span></a><a
													href="//travel.qunar.com/space/comments?userId=298229@qunar"
													target="_blank">评论<span class="comment">52</span></a>
											</div>
											<p class="introduce">微信：abby4528 ,新浪微博：@Abby45</p>
										</dd>
									</dl>
									<a data-uid="298229@qunar" href="#" class="js-follow care-btn"></a><a
									href="#" class="private-btn" data-ui="privateMsg"
									data-uid="298229" data-username="不旅不婷"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/152966678@qunar"
												target="_blank"><img
												src="img/tou8.jpg" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/152966678@qunar"
													target="_blank">dszf4127</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/152966678@qunar"
													target="_blank">游记<span class="notes">17</span></a><a
													href="//travel.qunar.com/space/books/152966678@qunar"
													target="_blank">行程<span class="plan">1</span></a><a
													href="//travel.qunar.com/space/comments?userId=152966678@qunar"
													target="_blank">评论<span class="comment">69</span></a>
											</div>
											<p class="introduce">陌生花开，可缓缓归矣...</p>
										</dd>
									</dl>
									<a data-uid="152966678@qunar" href="#"
									class="js-follow care-btn"></a><a href="#" class="private-btn"
									data-ui="privateMsg" data-uid="152966678"
									data-username="dszf4127"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/123265252@qunar"
												target="_blank"><img
												src="img/tou7.jpg" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/123265252@qunar"
													target="_blank">手边巴黎urruolan</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/123265252@qunar"
													target="_blank">游记<span class="notes">56</span></a><a
													href="//travel.qunar.com/space/books/123265252@qunar"
													target="_blank">行程<span class="plan">3</span></a><a
													href="//travel.qunar.com/space/comments?userId=123265252@qunar"
													target="_blank">评论<span class="comment">6</span></a>
											</div>
											<p class="introduce">慢享6大洲34国 时尚旅行专栏作家 /...</p>
										</dd>
									</dl>
									<a data-uid="123265252@qunar" href="#"
									class="js-follow care-btn"></a><a href="#" class="private-btn"
									data-ui="privateMsg" data-uid="123265252"
									data-username="手边巴黎urruolan"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
								<li class="myitem"><dl class="fans-info clrfix">
										<dt class="pic fl">
											<a href="//travel.qunar.com/space/139394454@qunar"
												target="_blank"><img
												src="img/tou9.png" /></a>
										</dt>
										<dd class="intro fr">
											<h3 class="name">
												<a href="//travel.qunar.com/space/139394454@qunar"
													target="_blank">孟夕</a>
											</h3>
											<div class="info">
												<a href="//travel.qunar.com/space/notes/139394454@qunar"
													target="_blank">游记<span class="notes">6</span></a><a
													href="//travel.qunar.com/space/books/139394454@qunar"
													target="_blank">行程<span class="plan">1</span></a><a
													href="//travel.qunar.com/space/comments?userId=139394454@qunar"
													target="_blank">评论<span class="comment">27</span></a>
											</div>
											<p class="introduce">段子手里最好的厨子，厨子里最好的...</p>
										</dd>
									</dl>
									<a data-uid="139394454@qunar" href="#"
									class="js-follow care-btn"></a><a href="#" class="private-btn"
									data-ui="privateMsg" data-uid="139394454" data-username="孟夕"></a>
								<div class="jiao-hu clrix"><a href="#" class="care-button fl">关注</a><a href="#" class="care-button fl">私信</a></div></li>
							</ul>
							<a href="#" class="btn-huan"> 更换一批</a>
						</div> 
					</div>
				</div>
				<div class="frmainbox-right">
					<div class="nav-btns clrfix">
						<a class="new-plan" href="createxingcheng.jsp">创建行程</a>
						<a class="new-note" href="createyouji.jsp">创建游记</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>