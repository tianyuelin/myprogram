<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/user/per.css">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div class="xixi">
        <form action="">
        头像：<img src="img/tou2.jpg"><br/>
        个性签名：<input type="text" class="xingge" style="width:400px;height:25px"><br/>
        昵称：<input type="text" class="nicheng" style="width:300px;height:25px"><br/>
        用户名:<input type="text" class="yong" style="width:300px;height:25px"><br/>
        <div class="xingbie">性别：<input type="radio" name="sex" value="male">男
   <input type="radio" name="sex" value="female">女</div><br/>
   生日：<input type="text" class="sheng" style="width:200px;height:25px"><br/>
   邮箱：<input type="text" class="you" style="width:200px;height:25px"><br/>
   <div class="miyi" >密保问题：<select name="mibao" style="width:200px;height:25px">
        <option>你的父亲名字</option>
        <option>你的母亲名字</option>
        <option>你的初中学校</option>
        <option>你的高中学校</option>
        <option>你的大学 </option>
        </select></div><br/>
        回答：<input type="text" class="huida" style="width:200px;height:25px"><br/>
   <input type="submit" value="提交" class="tijiao" style="width:100px;height:25px"/> 
        </form>
    </div>
 <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
   