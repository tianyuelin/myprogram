<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/user/youer.css">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div>
   <div class="tou">石家庄一游</div>
   <div class="zuo">
        <div class="xc">我的行程</div>
   </div>
   <div class="zhong">
        <div class="bj">编辑</div>
   </div>
   <div class="you">
        <div class="re">热门推荐
        </div>
        <div class="shou">我的收藏</div>
        <div class="dao">
               <div class="dian">景点</div>
               <div class="shi">美食</div>
               <div class="duo">更多</div>
               <div class="sou">
                   <form>
                        <input type="text" style="width:150px;height:23px">
                        <input type="submit" style="width:40px;height:25px" value="搜索" >
                   </form>
               </div>
               <div class="jing1">
                   <div class="jd1"><img src="img/c9.jpg"></div>
                   <div class="jie1">空中花园</div>
                   <div class="biao1">标签：景观台</div>
                   <div class="ping1">评论（300+）</div>
                   <div class="jia1">加入编辑</div>
               </div>
               <div class="jing2">
                   <div class="jd2"><img src="img/c2.jpg"></div>
                   <div class="jie2">正定古城墙</div>
                   <div class="biao2">标签：遗址</div>
                   <div class="ping2">评论（280+）</div>
                   <div class="jia2">加入编辑</div>
               </div>
               <div class="jing3">
                   <div class="jd3"><img src="img/c1.jpg"></div>
                   <div class="jie3">抱犊寨</div>
                   <div class="biao3">标签：山峦</div>
                   <div class="ping3">评论（280+）</div>
                   <div class="jia3">加入编辑</div>
               </div>
        </div>
        
   </div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>