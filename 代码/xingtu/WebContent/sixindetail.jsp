<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

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

<!-- 关于表情 -->
<link rel="stylesheet" type="text/css" href="js/emoji/jquery.sinaEmotion.css" />


<style>
    .topdiv{
        font-size:12px;
        font-family:'微软雅黑';
        margin-left:12%;
        margin-top:2%;
    }
  
    
    .textarea-box{
        position:relative;
        width:553px;
        height:125px;
        margin-right:21px;
        border:1px solid #e0e0e0;
        border-radius:3px;
        background:#fdfdfd;
    }
    
    .chatContent{
        margin-top:20px;
        width:200px;
        height:50px;
        background-color:#F2F2F2;
        width:20%;
        padding-top:1%;
        padding-left:2%;
        font-family:'微软雅黑';
        font-size:16px;
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
	      <div style="margin-bottom: 20px;"><a href="sixin.jsp">我的私信</a> >我与...的私信</div> 
	      
	      <!-- 下方聊天框 -->
	      <div>
	             
	             <!-- 最上方大聊天框 -->
	             <div style="margin-bottom:300px;">
	                 <form action="sxController" method="post">
	                     <!-- 上方的交谈框 -->
	                     <div style="width:100%">
	                         <div style="float:left;margin-left:15%">
	                     
	                             <textarea  rows="5" cols="15" name="content" class="textarea-box emotion"></textarea><br/>
	                             <!-- 提交按钮 -->
	                             <input style="border:1px solid #f90;  background-color:#f90;margin-top:1%;margin-left:79%;width:53px;height:27px;"  type="submit" value="发送" onclick="out()"/>
                                 <!-- 表情按钮 -->
                                 <div style="float:left;margin-top:1%" id="face">表情</div>
                             </div>
                             <div style="float:left">
                                 <img src="img/icon11.png"/>
                             </div>
                         </div>
                         <br/>
        
                     </form>                      
                 </div>
                 
                 <!-- 下方的小聊天框 -->
                    <c:forEach items="${list }" var="chatC">
                 
                 
                 
                     <div style="margin-left:9%;margin-top:20px;">
                       <div style="width:6%;float:left"><img src="img/icon11.png"/></div>
                       <div class="chatContent">${chatC.content }</div>
                     </div>
                     
                     
                    
                 
                 </c:forEach>
                 
                 
                 
                
	      </div>
	   
	
	</div>
	
	
	
	
	
	
	
	

	
	

	<jsp:include page="footer.jsp" flush="true"></jsp:include>
		<script src="js/user/jquery.min.js"></script>
		<script src="js/user/upload.js"></script>
		<script src="js/user/demo.js"></script>
		
		<!-- 关于表情 -->
		<script type="text/javascript" src="js/emoji/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="js/emoji/jquery.sinaEmotion.js"></script>
        <script type="text/javascript">
          // 绑定表情
           $('#face').SinaEmotion($('.emotion'));

           // 测试本地解析
           function out(){
	          var inputText = $('.emotion').val();
	          $('#out').html(AnalyticEmotion(inputText));
        }
        </script>
		
		
		
		
	</body>
</html>
