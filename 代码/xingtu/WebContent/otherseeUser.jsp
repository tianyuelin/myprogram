<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${CenterOwn }的空间</title>
<link href="${ctx }/css/user/myuse.css" rel="stylesheet">
<link href="${ctx }/css/user/myhead.css" rel="stylesheet">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header"  style="margin-top:5%">
		<div class="main-zt">
		
			<div class="user-info">
				<dt class="flpic">
					<img src="${ctx }/${CenterOwn.icon }" />
					<div style="float:left;" class="gz"> 
					<c:if test="${isSigned==true }">
					<a href="${ctx }/guanzhuController?bepersonemail=${CenterOwn.email}"> +&nbsp;关注  </a>
					</c:if> 
					<c:if test="${isSigned==false or isSigned==null }">
					<a href="${ctx }/sign.jsp"> +&nbsp;关注  </a>
					</c:if>
					</div>  <!-- 在此处传入了被关注人的邮箱 -->
				</dt><!-- 个人头像 -->

				<dd class="flintro">
				
					<h3 class="intro-title">
						<span class="name" title="QTL">${CenterOwn.username }</span>
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
					<div class="guzh">关注</div>  <!-- 从这里跳到控制器，然后再跳转到关注页面 -->
				</div>
				<div class="hz">|</div>
				<div class="fy">
					<div>0</div>
					<div>粉丝</div>
				</div>			
			</div>
			
			
		</div>
		
		

	</div>
	<div class="qn-skin">
		<div class="qn-page">
		     <div class="flmainbox-left">
		          <div class="xxz1"><a href="#myxc">我的行程</a></div>
		          <div class="xxz2"><a href="#mygl">我的攻略</a></div>
		          <div class="xxz3"><a href="#mysc">攻略收藏</a></div>
		          <div class="xxz4"><a href="#mygz">心愿清单</a></div>
		    </div>
			<div class="flmainbox-right">
				<div class="b-home-detail">
				    <div id="myxc">
				          <div class="zjxc">最近行程</div>
				          <div class="xich1">
				              <div class="wcj1">我创建了行程计划</div>
				              <div class="rq1">
				                    <div class="ts1">共1天</div>
				                    <div class="mycf1">2018-11-11出发</div>
				              </div>
				              <div class="zbt1"><a href="showxc.jsp">石家庄一日游</a></div>
				          </div>
				          <div class="xich2">  
				              <div class="wcj2">我创建了行程计划</div>
				              <div class="rq2">
				                    <div class="ts2">共2天</div>
				                    <div class="mycf2">2018-11-22出发</div>
				              </div>
				              <div class="zbt2"><a href="showxc.jsp">石家庄两日游</a></div>
				          </div>
				    </div>
				    <div id="mygl">
				          <div class="zdgl">我的攻略</div>
				          <c:if test="${CenterOwn.st!=null }">
				          <c:forEach items="${CenterOwn.st }" var="strategy">
				          <div class="gol1">
				              <div class="glbt1"><a href="${ctx }/strategy/singleStrategy?StrategyId=${strategy.sId}">${strategy.title }</a></div>
				              <div class="tpic1"><img src="${ctx }/${strategy.img}"></img></div>
				          </div>
				          </c:forEach>
				          </c:if>
				          <c:if test="${CenterOwn.st == null }">
				          <div class="nostrategy">攻略空空如也~</div>
				          </c:if>
				    </div>
					<div id="mysc">
						<div class="zdsc">攻略收藏</div>
						<div class="sphoto1">
							<div class="sc1">
								<img src="${ctx }/img/sc1.jpg">
							</div>
							<div class="sz1">
								<img src="${ctx }/img/tou5.jpg">
									<div>
										<a href="#">快过年了，旅行不可以放下，南极的风景。。。</a>
									</div>
									<p>小溪被&nbsp;&nbsp;2018年11月1日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共一天&nbsp;&nbsp;|&nbsp;&nbsp;30图</p>
									<p>白雪世界，生活着它们原始的种族，它们憨厚可爱。。。。。。</p>
							</div>
						</div>
						<div class="sphoto2">
							<div class="sc2">
								<img src="${ctx }/img/sc2.jpg">
							</div>
							<div class="sz2">
								<img src="${ctx }/img/tou8.jpg">
									<div>
										<a href="#">最浪漫的三亚旅游攻略</a>
									</div>
									<p>lush陆森&nbsp;&nbsp;2018年7月12日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共三天&nbsp;&nbsp;|&nbsp;&nbsp;25图</p>
									<p>有的人为了放松心情而去旅行，有的人只是为了。。。。。。。</p>
							</div>
						</div>
						<div class="sphoto3">
							<div class="sc3">
								<img src="${ctx }/img/sc3.jpg">
							</div>
							<div class="sz3">
								<img src="${ctx }/img/tou7.jpg">
									<div>
										<a href="#">严冬里北京最火爆的烤肉</a>
									</div>
									<p>不爱吃鱼的猫&nbsp;&nbsp;2018年11月11日出发&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;共一天&nbsp;&nbsp;|&nbsp;&nbsp;12图</p>
							</div>
						</div>
					</div>
					<div id="mygz">
					    <div class="zdgz">心愿清单</div>
						<ul class="fans-listclrfix">
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>