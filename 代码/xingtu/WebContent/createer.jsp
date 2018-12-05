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
<div class="erall">
   <div class="tou">
         <div class="sjz">石家庄一游</div>
         <div class="wc"><input type="submit" style="width:80px;height:30px" value="完成" ></div>
   </div>
   <div class="zuo">
        <div class="xc">我的行程</div>
   </div>
   <div class="zhong">
        <div class="bj">编辑</div>
        <div class="sj">石家庄</div>
        <div class="tj">添加城市</div>
        <div class="xian1"><img src="img/di1.jpg">
             <div class="di1">01&nbsp;&nbsp;&nbsp;&nbsp;空中花园</div>
             <p class="pj1">地址：石家庄桥东区石市翟营南大街</p>
             <a href="#" class="ck">查看周边</a>
             <div class="bz">添加备注</div>
        </div>
   </div>
   <div class="you">
        <div class="re"><a href="#">热门推荐</a>
        </div>
        <div class="shou"><a href="#">我的收藏</a></div>
        <div class="dao">
               <div class="dian"><a href="#">景点</a></div>
               <div class="shi"><a href="#">美食</a></div>
               <div class="duo"><a href="#">更多</a></div>
               <div class="sou">
                   <form>
                        <input type="text" style="width:140px;height:23px">
                        <input type="submit" style="width:50px;height:25px" value="搜索" >
                   </form>
               </div>
               <div class="jing1">
                   <div class="jd1"><img src="img/c9.jpg"></div>
                   <div class="jie1">空中花园</div>
                   <div class="biao1">标签：景观台</div>
                   <div class="ping1">评论（300+）</div>
                   <div class="jia1" onclick="add()">加入编辑</div>
               </div>
               <div class="jing2">
                   <div class="jd2"><img src="img/c2.jpg"></div>
                   <div class="jie2">正定古城墙</div>
                   <div class="biao2">标签：遗址</div>
                   <div class="ping2">评论（280+）</div>
                   <div class="jia2" onclick="add()">加入编辑</div>
               </div>
               <div class="jing3">
                   <div class="jd3"><img src="img/c1.jpg"></div>
                   <div class="jie3">抱犊寨</div>
                   <div class="biao3">标签：山峦</div>
                   <div class="ping3">评论（280+）</div>
                   <div class="jia3" onclick="add()">加入编辑</div>
               </div>
        </div>
        
   </div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>