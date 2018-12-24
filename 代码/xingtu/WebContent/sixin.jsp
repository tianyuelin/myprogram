<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="css/user/demo.css">
<link rel="stylesheet" href="css/user/cropper.min.css">
<title>QTL的空间</title>
<link href="css/user/myhead.css" rel="stylesheet">
<link href="css/user/pho.css" rel="stylesheet">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/user/home.css">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
<script type="text/javascript" src="js/user/jquery.min.js"></script>
<script type="text/javascript" src="js/user/up.js"></script>

<style>
    .topdiv{
        font-size:12px;
        font-family:'微软雅黑';
        margin-left:150px;
        margin-top:25px;
    }
    
    .secondiv{
        width:730px;
        height:120px;
        border:1px solid #C0C0C0;
    }
</style>



</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header"  style="margin-top:5%;">
		<div class="main-zt">
			<div class="user-info">
				<dt class="flpic">
					<img src="img/tou2.jpg" />
				</dt><!-- 个人头像 -->
				<dd class="flintro">
					<h3 class="intro-title">
						<span class="name" title="QTL">QTL</span><span class="score"><a
							target="_blank"
							href="#">100积分</a></span>
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
	
	
	
	<!-- 关于私信的内容 -->
	<div class="topdiv">
	      <div style="margin-bottom: 20px;">我的私信(1)</div>
	      
	      
	      
	      
	      <c:forEach items="${finallXinxi }" var="fx">
	      <a href="#">
	          <div class="secondiv">
	              <!-- 左边的div -->
	              <div style="float:left">
	                  <div style="float:left;width:480px;">
	                      <div style="float:left;margin-left:30px;margin-top:28px;">
	                           <img src="img/icon11.png"/>  
	                      </div>
	                  <div style="float:left;margin-left:20px;">
	                      <div style="margin-top:25px;">${fx.fromUserEm }</div>
	                      <div style="color:gray;margin-top:15px;">${fx.content }</div>
	                  </div>
	                  </div>
	             </div>
	             <!-- 右边的div -->
	             <div style="float:left;margin-left:80px;margin-top:25px;">
	                   <div style="color:black;">${fx.sxtime }</div>
	                   <div style="margin-left:100px;margin-top:40px">回复</div>
	             </div>

	          </div>
	      </a>
	      </c:forEach>
	
	</div>
	

	<div style="float:left;text-align:center;font-family:'microsoft yahei'; font-size:14px;margin-left:46%;margin-top:5%;margin-bottom:5%">
	    <a href="#">首页</a> 
	    <a href="#">上一页</a>
	    <a href="#">下一页 </a>
	    <a href="#">末页 </a>
	</div>
	

	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	
		<script src="js/user/jquery.min.js"></script>
		<script src="js/user/upload.js"></script>
		<script src="js/user/demo.js"></script>
	</body>
</html>
