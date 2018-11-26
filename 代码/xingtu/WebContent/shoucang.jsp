<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>祈墨墨的空间</title>
<link rel="stylesheet" href="css/user/shou.css">
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
	<div class="shouxia">
		<div class="shoux">
		    <div class="shouph">
		         <div class="sphoto1">
		              <div class="sc1"><img src="img/sc1.jpg"></div>
		              <div class="sz1"><img src="img/tou5.jpg">
		                     <div><a href="#">快过年了，旅行不可以放下，南极的风景。。。</a></div>
		                     <p>小溪被&nbsp;&nbsp;2018年11月1日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共一天&nbsp;&nbsp;|&nbsp;&nbsp;30图</p>
		                     <p>白雪世界，生活着它们原始的种族，它们憨厚可爱。。。。。。</p>
		              </div>
		         </div>
				<div class="mainbox-right">
					<div class="nav-btns clrfix">
						<a class="new-plan" href="createxingcheng.jsp">创建行程</a>
						<a class="new-note" href="createyouji.jsp">创建游记</a>
					</div>
					<div class="js-visitors"></div>
					<div class="js-fans"></div>
				</div>
				<div class="sphoto2" >
		              <div class="sc2"><img src="img/sc2.jpg"></div>
		              <div class="sz2"><img src="img/tou8.jpg">
		                     <div><a href="#">最浪漫的三亚旅游攻略</a></div>
		                     <p>lush陆森&nbsp;&nbsp;2018年7月12日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共三天&nbsp;&nbsp;|&nbsp;&nbsp;25图</p>
		                     <p>有的人为了放松心情而去旅行，有的人只是为了欣赏风景而去旅行。。。。。。。</p>
		              </div>
		         </div>
		         <div class="sphoto3" >
		              <div class="sc3"><img src="img/sc3.jpg"></div>
		              <div class="sz3"><img src="img/tou7.jpg">
		                     <div><a href="#">严冬里北京最火爆的烤肉</a></div>
		                     <p>不爱吃鱼的猫&nbsp;&nbsp;2018年11月11日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共一天&nbsp;&nbsp;|&nbsp;&nbsp;12图</p>
		              </div>
		         </div>
		         <div class="sphoto4" >
		              <div class="sc4"><img src="img/sc4.jpg"></div>
		              <div class="sz4"><img src="img/tou6.jpg">
		                     <div><a href="#">严冬里北京最火爆的火锅店</a></div>
		                     <p>不爱吃鱼的猫&nbsp;&nbsp;2018年11月11日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共一天&nbsp;&nbsp;|&nbsp;&nbsp;12图</p>
		              </div>
		         </div>
		    </div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	
	</body>