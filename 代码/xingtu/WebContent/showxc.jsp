<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QTL的空间</title>
<link href="${ctx }/css/user/showxc.css" rel="stylesheet">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div class="shxcall" style="margin-top:5%">
        <div class="shhead">
             <div class="shimg"><img src="${ctx }/img/tou2.jpg"></div>
             <div class="shtit">石家庄一日游<br />
                 <div class="shxij">QTL&nbsp;&nbsp;&nbsp;|2018-11-11出发&nbsp;&nbsp;&nbsp;&nbsp;|共一天</div>
             </div>
             <div class="shbj">编辑</div>
        </div>
        <div class="shcon">
             <div class="shgs">
                 <div class="shz">行程概述</div>
                 <div class="shdt">查看地图</div>
             </div>
             <div class="shzy">
                  <div class="shimg1"><img src="${ctx }/img/shtb.jpg"></div>
                  <div class="shdd">石家庄市区——>正定——>平山</div>
                  <div class="shcn">空中花园——>正定古城墙——>抱犊寨</div>
             </div>
		</div>
		<div class="shxj">
			<div class="shxq">行程详情</div>
			<c:forEach items="${journey.jd}" var="myjour">
			<div class="xian1">
				<img src="${ctx }/img/c9.jpg">
					<div class="di1">${myjour.journame}</div>
					<p class="pj1">地址：石家庄桥东区石市翟营南大街</p> <a href="#" class="ck">查看周边</a>
			</div>
			</c:forEach>
			<%-- <div class="xian1">
				<img src="${ctx }/img/c2.jpg">
					<div class="di1">正定古城墙</div>
					<p class="pj1">地址：石家庄市桥西区中花市街与四中路交叉口</p> <a href="#" class="ck">查看周边</a>
			</div>
			<div class="xian1">
				<img src="${ctx }/img/c1.jpg">
					<div class="di1">抱犊寨</div>
					<p class="pj1">地址：石家庄市鹿泉市抱犊寨风景区</p> <a href="#" class="ck">查看周边</a>
			</div> --%>
		</div>
	</div>
    </div>

<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>