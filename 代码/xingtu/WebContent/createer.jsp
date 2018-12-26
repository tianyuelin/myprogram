<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx }/css/user/youer.css">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<form action="${ctx }/journey/createxc" method="post" >
<div class="erall">
   <div class="tou">
         <div class="biaot"><input class="tit" type="text" placeholder='北京一日游' name="jtitle"></div>
         <div class="cf">出发时间
         <input type="text" name="jtime"></div>
         <div class="wc"><input type="submit" style="width:80px;height:30px" value="完成" ></div>
   </div>
   <div id="zuo">
        <div class="xc">我的行程</div>
   </div>
   <div id="zhong">
        <div class="bj">编辑</div>
        <div class="sj">北京</div>
        <div class="tj">添加城市</div>
   </div>
   <div class="you" id="you">
        <div class="mybox">
			<div id="remen">
				<a href="#" onclick="retj()">热门推荐</a>
			</div>
			<div id="wsc">
				<a href="#" onclick="shc()">我的收藏</a>
			</div>
		</div>
        <div id="fenye">
        <div class="dao" id="dao1" style="display:block">
               <div class="dian"><a href="#">景点</a></div>
               <div class="shi"><a href="#">美食</a></div>
               <div class="duo"><a href="#">更多</a></div>
               <div class="sou">
                   <form>
                        <input type="text" style="width:140px;height:23px">
                        <input type="submit" style="width:50px;height:25px" value="搜索" >
                   </form>
               </div>
               <c:forEach var="journeylist" items="${page.list }">
               <div class="jing1" id="jing${journeylist.sceneId}" onclick="addxq(this)">
                   <div class="jd1"><img id="im${journeylist.sceneId}" src="${journeylist.img}"></div>
                   <div class="jx1" id="jx${journeylist.sceneId}">${journeylist.sceneId}</div>
                   <div class="jie1" id="ji${journeylist.sceneId}">${journeylist.sname}</div>
                   <div class="biao1">标签：美景</div>
                   <div class="ping1">评论（300+）</div>
                   <div class="dizh1">${journeylist.address}</div>
                   <div class="jia1" id="jrbj${journeylist.sceneId}" >加入编辑</div>
               </div>
               </c:forEach>
               <div class="pagination-wrap">
                   <div class="pagination">
                    <a href="javascript:doPage(1,1)">首页</a>
                    <a href="javascript:doPage(${page.prePageNum },1);">上一页</a>
                    <a href="javascript:doPage(${page.nextPageNum },1);">下一页</a>
                    <a href="javascript:doPage(${page.totalPageNum },1);">末页</a>
                  </div>
                </div>
        </div>
        <div class="dao" id="dao2" style="display:none">
               <c:forEach var="shoucanglist" items="${mypage.list }">
               <div class="jing1" id="jing${shoucanglist.scene.sceneId}" onclick="addxq(this)">
                   <div class="jd1"><img id="im${shoucanglist.scene.sceneId}" src="${shoucanglist.scene.img}"></div>
                   <div class="jx1" id="jx${shoucanglist.scene.sceneId}">${shoucanglist.scene.sceneId}</div>
                   <div class="jie1" id="ji${shoucanglist.scene.sceneId}">${shoucanglist.scene.sname}</div>
                   <div class="biao1">标签：美景</div>
                   <div class="ping1">评论（300+）</div>
                   <div class="dizh1">${shoucanglist.scene.address}</div>
                   <div class="jia1" id="jrbj${shoucanglist.scene.sceneId}" >加入编辑</div>
               </div>
               </c:forEach>
				 <div class="pagination-wrap">
                  <div class="pagination">
                    <a href="javascript:doPage(1,1)">首页</a>
                    <a href="javascript:doPage(1,${mypage.prePageNum });">上一页</a>
                    <a href="javascript:doPage(1,${mypage.nextPageNum });">下一页</a>
                    <a href="javascript:doPage(1,${mypage.totalPageNum });">末页</a>
                  </div>
                </div>
        </div>
    </div>
   </div>
</div>
</form>
<div id="allmap"></div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script type="text/javascript">
		function doPage(n,n2){
			//$('#you').html("");
			alert(n);
			$.ajax({
			       type:"POST",
			       url:"/xingtu/journey/journeyfenye",
			       data:{'pageNum':n,'pageNum2':n2},
			       dataType: "html",   //返回值类型       使用json的话也可以，但是需要在JS中编写迭代的html代码
			       cache:false,
			       success:function(data){
			    	   //alert(1);
			           //$("#you").load(location.href+" #you");
			           $('#fenye').html(data);
			       },
			       error:function(XMLHttpRequest,textStatus,errorThrown){
			    	   alert(XMLHttpRequest.readyState);
			    	   alert(textStatus);
			    	   alert(errorThrown);
			    	   }
			   });
		}
	</script>
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/user/jquery.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script src="${ctx }/js/user/createer.js"></script>
