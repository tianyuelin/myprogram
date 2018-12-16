<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
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

<style type="text/css">
    .topdiv{
        width:100%;
        font-family:'microsoft yahei'; 
        font-size:14px;
    }
    
    .seconddiv{
        width:480px;
        height:155px;
        background-color:white;
        margin-left:150px;
        margin-top:20px;
        float:left;
        border:1px solid #f7f7f7;
       
  
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
					<div class="shu">${FGCount }</div>
					<div class="guzh"><a href="#">关注</a></div>
				</div>
				<div class="hz">|</div>
				<div class="fy">
					<div>${fansCount }</div>
					<div><a href="${ctx }/fansUser">粉丝</a></div>
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
	
	
	
	<!-- 在此处写我的关注的页面 -->
	<div class="topdiv">
	    <div style="padding-top:50px;margin-bottom:20px;">
	           <span style="margin-left:150px;margin-right:20px;"><a href="fellow.jsp" style="color:black">我的关注</a></span>     <span><a href="fans.jsp">我的粉丝</a></span>
	    </div>
	    
	    <c:forEach items="${felloPerson }" var="fp">
	    <!-- 关注者1 -->
	    <div class="seconddiv">
	        <div style="float:left;width:480px;">
	          <div style="float:left;margin-left:20px;margin-top:25px;">
	            <img src="img/icon11.png"/>   <!-- 等插入头像之后添加 -->
	          </div>
	          <div style="float:left;margin-left:20px;">
	            <div style="margin-top:25px;">${fp.username }</div>
	            <div style="color:gray;margin-top:10px;">游记&nbsp;3  &nbsp;&nbsp;&nbsp;  行程&nbsp;2  &nbsp;&nbsp;&nbsp; 评论&nbsp;2 &nbsp;&nbsp;&nbsp;  关注&nbsp;2   &nbsp;&nbsp;&nbsp; 粉丝&nbsp;2</div>
	          </div>
	        </div>      
	        <br/>
	        <div style="float:left;margin-left:200px;margin-top:17px;">
	            <a href="${ctx }/sixin?email=${fp.username }"><input style="opacity: 0.9;background-color:white;border:1px solid gray;width:60px;height:30px;" type="button" value="私信"/></a>
	        </div>   
	    </div>
	    
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
