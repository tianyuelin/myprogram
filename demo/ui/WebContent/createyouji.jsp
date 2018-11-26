<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/user/createyj.css">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
   <div class="yoush">
       <div class="tupian">
           <form>
           上传头图：<input type="file" name="pic">
          </form>
       </div>
       <div class="titl">
            <form>
              为你的游记起一个skr的名字：<input type="text" style="width:240px;height:25px">
            </form>
       </div>
   </div>
   <div class="youxia">
       <div class="youzuo">  
           <div class="mu">目录</div>
           <div class="qian">* &nbsp;&nbsp;前言</div>
           <div class="shuo">&nbsp;&nbsp;&nbsp;&nbsp;说说这次旅行</div>
           <div class="yi">* &nbsp;&nbsp;第一天</div>
           <div class="didi">&nbsp;&nbsp;&nbsp;&nbsp;未知地点</div>
           <div class="er">* &nbsp;&nbsp;第二天</div>
           <div class="didi">&nbsp;&nbsp;&nbsp;&nbsp;未知地点</div>
       </div>
       <div class="youzhong">
           <div class="ti1">
               <div class="lo1"><img src="img/lo1.png">前言</div>
               <div>
                   <div class="dian1"><img src="img/bai.png">说说这次旅行</div>
                   <form>
                      <input type="text"  style="width:580px;height:80px"> 
                   </form>
               </div>
           </div>
           <div class="ti2">
               <div class="lo2"><img src="img/lo2.png">第一天</div>
               <div>
                   <div class="dian2"><img src="img/bai.png">未知地点</div>
                   <form>
                      <input type="text"  style="width:580px;height:80px"> 
                   </form>
               </div>
           </div>
           <div class="ti3">
               <div class="lo3"><img src="img/lo3.png">第二天</div>
               <div>
                   <div class="dian3"><img src="img/bai.png">未知地点</div>
                   <form>
                      <input type="text"  style="width:580px;height:80px"> 
                   </form>
               </div>
           </div>
       </div>
       <div class="youyou">所有照片
       </div>
   </div>
   <div class="youbi">
   </div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>