<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${ctx }/css/user/showxc.css" rel="stylesheet"/>
<link href="${ctx }/css/user/xcshow.css" rel="stylesheet"/>
<link href="${ctx }/css/home/header.css" rel="stylesheet"/>
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet"/>
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="shhead">
    <div class="shimg"><img src="${ctx }/${user.icon}"></div>
    <div class="shtit">${journey.jtitle }<br />
       <div class="shxij">${user.username }&nbsp;&nbsp;&nbsp;|${journey.jtime }出发&nbsp;&nbsp;&nbsp;&nbsp;|共一天</div>
    </div>
</div>
<div class="shcon">
   <div class="shgs">
       <div class="shz">行程概述</div>
   </div>
   <div class="shzy">
       <div class="shimg1"><img src="${ctx }/img/shtb.jpg"></div>
           <span style="font-size: 30px;">天安门->故宫->八达岭长城</span>
   </div>
</div>
<div class="xingchengtable">
	<table>
		<thead>
			<tr style="width: 100%;text-align: center;height: 50px;font-size:25px; font-weight: 600;">
				<td colspan="3" style="width: 100%;text-align: center;height: 50px;font-size:25px; font-weight: 600;">${journey.jtitle }</td>
			</tr>
		</thead>
		<c:forEach items="${journey.jd}" var="myjour">
		<tr height="200px">
			<td width="30%">
				<span><input type="text" value="2018-01-30 08:00"/></span><br>
				<span>|</span><br>
				<span><input type="text" value="2018-01-30 08:00"/></span>
			</td>
			<td width="40%">
				<div class="scene">
					<img src="${myjour.scene.img}" style="float: left;margin-left:10px; " width="40%" height="180px;"/>
					<div style="margin-left: 41%; text-align: left; width: 55%; margin-top: auto;margin-bottom: auto;">
						<span>地点：${myjour.scene.sname}</span><br>
						<span>地址：</span><span style="text-align: left;">${myjour.scene.address}</span>
					</div>
				</div>
			</td>
			<td width="30%">游玩儿时长：<input type="text" style="border: none;" value="建议${myjour.scene.playtime }"/></td>
		</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>