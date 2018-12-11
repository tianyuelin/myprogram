<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="${ctx }/css/user/createxc.css" rel="stylesheet">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="all">
		<div class="left" style="margin-top: 5%;back">
			<div class="tit">已选目的地</div>
			<div class="titna" >从右侧添加想去的地点</div>
			<div class="tianjia"><input type="text" value="+手动添加行程"></div>
			<div class="bian">
				<div class="bj">
					<a href="${ctx }/journey/journeylist">开始编辑</a>
				</div>
			</div>
		</div>
		<div class="myright" style="margin-top: 5%">
			<div class="shang">
				<div class="ti1">热门推荐</div>
				<div class="ssk">
					<form>
						<input type="text" style="width: 240px; height: 23px"> <input
							type="submit" style="width: 40px; height: 25px" value="搜索">
					</form>
				</div>
			</div>
			<div class="jd9">
			<c:forEach var="citylist" items="${citylist }">
				<div class="dian1">
					<img src="${citylist.img }" onclick="add()">
					<div class="ming1">${citylist.city }</div>
				</div>
			</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
	<script type="text/javascript">
		function add() {
			
		}
	</script>
</body>
</html>