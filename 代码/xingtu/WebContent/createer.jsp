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

</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<form action="${ctx }/journey/createxc" method="post" >
<div class="erall">
   <div class="tou">
         <div class="biaot"><input class="tit" type="text" placeholder='北京一日游' name="jtitle"></div>
         <div class="cf">出发时间<input type="text" name="jtime"></div>
         <div class="wc"><input type="submit" style="width:80px;height:30px" value="完成" ></div>
   </div>
   <div id="zuo">
        <div class="xc">我的行程</div>
        <!-- <div class="di">天安门广场</div>
        <div class="xia">相距220km</div> -->
   </div>
   <div id="zhong">
        <div class="bj">编辑</div>
        <div class="sj">北京</div>
        <div class="tj">添加城市</div>
        <%-- <div id="xian1">
             <img src="${ctx }/img/di1.jpg">
             <div id="di1">01&nbsp;&nbsp;&nbsp;&nbsp;空中花园</div>
             <p id="pj1">地址：石家庄桥东区石市翟营南大街</p>
             <a href="#" id="ck1">查看周边</a>
        </div> --%>
        <!-- <div class="bz">添加备注</div> -->
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
               <c:forEach var="journeylist" items="${page.list }">
               <div class="jing1" id="jing${journeylist.sceneId}" onclick="addxq(this)">
                   <div class="jd1"><img id="im${journeylist.sceneId}" src="${journeylist.img}"></div>
                   <div class="jie1" id="ji${journeylist.sceneId}">${journeylist.sname}</div>
                   <div class="biao1">标签：美景</div>
                   <div class="ping1">评论（300+）</div>
                   <div class="dizh1">${journeylist.address}</div>
                   <div class="jia1" id="jrbj${journeylist.sceneId}" >加入编辑</div>
               </div>
               </c:forEach>
               <%-- <div class="jing2">
                   <div class="jd2"><img src="${ctx }/img/c2.jpg"></div>
                   <div class="jie2">正定古城墙</div>
                   <div class="biao2">标签：遗址</div>
                   <div class="ping2">评论（280+）</div>
                   <div class="jia2" onclick="add()">加入编辑</div>
               </div>
               <div class="jing3">
                   <div class="jd3"><img src="${ctx }/img/c1.jpg"></div>
                   <div class="jie3">抱犊寨</div>
                   <div class="biao3">标签：山峦</div>
                   <div class="ping3">评论（280+）</div>
                   <div class="jia3" onclick="add()">加入编辑</div>
               </div> --%>
               <div class="pagination-wrap">
                  <div class="pagination">
                    <a href="${ctx }/journey/journeylist?pageNum=1">首页</a>
                    <a href="${ctx }/journey/journeylist?pageNum=${page.prePageNum }">上一页</a>
                    <a href="${ctx }/journey/journeylist?pageNum=${page.nextPageNum }">下一页</a>
                    <a href="${ctx }/journey/journeylist?pageNum=${page.totalPageNum }">末页</a>
                  </div>
                </div>
        </div>
        
   </div>
</div>
</form>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/user/jquery.min.js"></script>
<script src="${ctx }/js/user/ajaxfileupload.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script src="${ctx }/js/user/createer.js"></script>