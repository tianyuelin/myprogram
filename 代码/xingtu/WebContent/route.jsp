<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/login/base.css"/>
   
 <link rel="stylesheet" href="css/home/header.css">
<link rel="stylesheet" href="css/home/bootstrap.min.css">
<link rel="stylesheet" href="css/home/swiper.min.css">
<link rel="stylesheet" href="css/routecss/route.css">

<script type="text/javascript" src="js/routejs/star.js"></script>	


</head>
<body>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="a"></div>
	<div class="all">
		<div class="context">
			<div class="article-header-box">
				<div class="article-header">
					<div class="article-title-box">
						<span class="cricle">原</span>
						<h2 class="title-article">如何在jsp中显示本地计算机上的图片文件</h2>
					</div>
					<div class="article-info-box">
						<div class="article-bar-top" style="height: 53px;">
							<span class="time">2014年04月05日 17:32:02</span> 
							<a class="follow-nickName" href="https://me.csdn.net/songfanxuguirong" 
							target="_blank">站在山顶看世界</a>
							<span class="read-count">地点</span> 
						</div>
					</div>
				</div>
			</div>

			<div class="border">

				<!-- 参考行程 -->
				<div class="border_title">
					<div class="border_title_top">
						<h3>参考行程</h3>
					</div>
					
					<div class="trip_deteil">
						<div class="trip_deteil_top">
							<img src="images/diyitian.png" alt="">
							<div class="trip_deteil_top_right">
								早餐(无)午餐(无)晚餐(有)<span>昌平</span>
							</div>
						</div>
						<div class="trip_deteil_bottom">
							<p>
								文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
								<img src="images/cankaoxingchengpic2.png" alt="">
						</div>
						<div class="trip_deteil_top">
							<img src="images/diertian.png" alt="">
							<div class="trip_deteil_top_right">
								早餐(有)午餐(有)晚餐(无)<span>昌平</span>
							</div>
						</div>
						<div class="trip_deteil_bottom">
							<p>
								文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字
								<img src="images/cankaoxingchengpic3.png" alt="">
						</div>

					</div>

					<div></div>
					<div></div>
					<div></div>
				</div>
				
				<!--  费用说明-->
				<div class="border_title">
					<div class="border_title_top">
						<h3>费用说明</h3>
					</div>
					<div class="explain">
						<p>跟团游</p>
						
							1、交通：往返空调旅游汽车<br>
							2、住宿：往返空调旅游汽车<br>
							3、门票：往返空调旅游汽车<br>
							4、用餐：往返空调旅游汽车<br>
							5、全程优秀导游服务<br>
					</div>
				</div>
				<!--  预定指南-->
				<div class="border_title">
					<div class="border_title_top">
						<h3>预定指南</h3>
					</div>
					<div class="explain">
						<p>预订须知</p>
							1、我社保留景点顺序调换权利<br>
							2、如遇人力不可抗拒，我社保留景点顺序调换权利<br>
							3、客人放弃景点，我社保留景点顺序调换权利<br>
							4、请游客听从导游统一安排，我社保留景点顺序调换权利<br>
						
					</div>
					<div class="explain">
						<p>温馨提示</p>
						1、以上行程及价格仅供参考<br>
						2、参加旅游人员，以上行程及价格仅供参考<br>
					</div>
				</div>
				<!-- 游客点评-->
				<div class="border_title">
					<div class="border_title_top">
						<h3>游客点评</h3>
					</div>
					<table class="comment_toptop" cellpadding="10">
						<tr class="comment_top">
							<td class="comment_top_first"><span class="wenzi">游客满意度</span>
								<p>5.0</p> <span class="tupian"> <img alt=""
									src="images/xingxing.png">
							</span></td>

							<script type="text/javascript" src="js/routejs/jquery-1.4.2.min.js"></script>
							<script type="text/javascript" src="js/routejs/Studyplay_vote.js"></script>
							<script type="text/javascript">
								$(document).ready(function() {
									$("#progressbar").study_vote([ {
										"name" : "好评",
										"data" : "90",
										"color" : "#39c"
									}, {
										"name" : "中评",
										"data" : "10",
										"color" : "#f00"
									}, {
										"name" : "差评",
										"data" : "20",
										"color" : "#000"
									} ]);

								});
							</script>

							<style type="text/css">
								* {
									margin: 0;
									padding: 0;
									list-style-type: none;
									}

								a, img {
									border: 0;
									}

								.comment_top_second {
									margin: 20px auto;
									width: 500px;
									}

								#studyvote .fl {
									float: left;
									}

								#studyvote .dd {
									clear: both;
									margin: 7px 0;
									width: 100%;
									height: 15px;
									}

								#studyvote .outbar {
									border: 1px solid #dedede;
									background: #fff;
									height: 13px;
									width: 80%;
									float: left;
									}

								#studyvote .inbar {
									height: 13px;
									display: block;
									}
							</style>
							<td class="comment_top_second">
								<div id="progressbar"></div>
							</td>

						</tr>
						
						
						<tr id="wrap" >
								
							<td  id="mark" colspan="2">
								<h1>为这篇攻略打个分吧</h1>
								
								<span id="pic"> <img src="images/star0.png" title="1"
									name="star1" class="stars" /> <img src="images/star0.png"
									title="2" name="star2" class="stars" /> <img
									src="images/star0.png" title="3" name="star3" class="stars" />
									<img src="images/star0.png" title="4" name="star4"
									class="stars" /> <img src="images/star0.png" title="5"
									name="star5" class="stars" /> <br />
							</span>
				
								<form>
									<textarea rows="8" cols="40" id="txt"></textarea>
									<br />
									<button class="btn">公开评论</button>
								</form>



							</td>
						</tr>
						
					</table>


					<div class="review_data">
						<dl >
							<dt class="dldt">
								<span class="kaopu">很靠谱</span>
								<span class="zhiliang">产品质量：</span>非常满意 
								<span class="zhiliang">服务态度：</span>非常满意 
								<span class="zhiliang">与描述相符：</span>非常满意
							</dt>
							<dd>
								<div class="con">该用户没有发表评论</div>
								<p>
									<em>欣欣会员</em><span>2018-10-13 15:00</span>
								</p>

							</dd>
						</dl>
						<dl>
							<dt class="dldt">
								<span class="kaopu">很靠谱</span>
								<span class="zhiliang">产品质量：</span>非常满意 
								<span class="zhiliang">服务态度：</span>非常满意 
								<span class="zhiliang">与描述相符：</span>非常满意
							</dt>
							<dd>
								<div class="con">该用户没有发表评论</div>
								<p>
									<em>欣欣会员</em><span>2018-10-13 15:00</span>
								</p>

							</dd>
						</dl>
						<dl>
							<dt class="dldt">
								<span class="kaopu">很靠谱</span>
								<span class="zhiliang">产品质量：</span>非常满意 
								<span class="zhiliang">服务态度：</span>非常满意 
								<span class="zhiliang">与描述相符：</span>非常满意
							</dt>
							<dd>
								<div class="con">该用户没有发表评论</div>
								<p>
									<em>欣欣会员</em><span>2018-10-13 15:00</span>
								</p>

							</dd>
						</dl>
						<dl>
							<dt class="dldt">
								<span class="kaopu">很靠谱</span>
								<span class="zhiliang">产品质量：</span>非常满意 
								<span class="zhiliang">服务态度：</span>非常满意 
								<span class="zhiliang">与描述相符：</span>非常满意
							</dt>
							<dd>
								<div class="con">该用户没有发表评论</div>
								<p>
									<em>欣欣会员</em><span>2018-10-13 15:00</span>
								</p>

							</dd>
						</dl>
						<dl>
							<dt class="dldt">
								<span class="kaopu">很靠谱</span>
								<span class="zhiliang">产品质量：</span>非常满意 
								<span class="zhiliang">服务态度：</span>非常满意 
								<span class="zhiliang">与描述相符：</span>非常满意
							</dt>
							<dd>
								<div class="con">该用户没有发表评论</div>
								<p>
									<em>欣欣会员</em><span>2018-10-13 15:00</span>
								</p>

							</dd>
						</dl>
						<dl>
							
						</dl>
					</div>
					<div class="page">
						<div class="page_con">
							<span class="shouye" href="#">1</span><a class="num"
								href="javascript:;" data-page="2">2</a><a class="num"
								href="javascript:;" data-page="3">3</a><a class="num"
								href="javascript:;" data-page="4">4</a><a class="num next"
								href="javascript:;" data-page="2"><span>下一页</span><i
								class="triangle"></i></a><span class="text">共4页</span>
						</div>
					</div>
				</div>
				
				<!--  相关路线-->
				<div class="border_title">
					<div class="border_title_top">
						<h3>相关路线</h3>
						<div class="border_title_top_right">
							<span><a href="#">石家庄到北京旅游</a></span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <span><a href="#">更多石家庄国内三日旅游路线</a></span>
						</div>
					</div>
					<div class="line">
						<ul>
							<li>
								<a href="#" title="石家庄到华东旅游" target="_blank">
									<img class="lazy" data-original="images/shijiazhuangdaohuadong.png"
										src="images/shijiazhuangdaohuadong.png" alt="" width=""
										height="" style="display: block;">
								</a>
								<div class="text_con">
									<span class="lvyou"><a href="#">石家庄到华东旅游(南京、无锡、苏州、杭...)</a></span>
										
									<span class="price">2300元起 </span>	
								</div>
							</li>
							<li><a href="#" title="石家庄到云南旅游" target="_blank"><img
									class="lazy" data-original="images/shijiazhuangdaoyunnan.png"
									src="images/shijiazhuangdaoyunnan.png" alt="" width=""
									height="" style="display: block;"></a>
									<div class="text_con">
										<span class="lvyou">石家庄到云南旅游 昆明大理丽江双飞六日4+5...</span>
										
											<span class="price">3550元起 </span>
										
									</div></li>
							<li><a href="#" title="石家庄到厦门" target="_blank"><img
									class="lazy" data-original="images/shijiazhuangdaoxiamen.png"
									src="images/shijiazhuangdaoxiamen.png" alt="" width=""
									height="" style="display: block;"></a>
									<div class="text_con">
										<span class="lvyou">石家庄到厦门双飞四日游（休闲游）石家庄到...</span>
										
											<span class="price">3450元起 </span>
										
									</div></li>
							<li><a href="#" title="石家庄到海南" target="_blank"><img
									class="lazy" data-original="images/shijiazhuangdaohainan.png"
									src="images/shijiazhuangdaohainan.png" alt="" width=""
									height="" style="display: block;"></a>
									<div class="text_con">
										<span class="lvyou">石家庄到海南蜈支洲旅游”纯玩非诚勿扰六日游“</span>
										
											<span class="price">3860元起 </span>
										
									</div></li>
						</ul>
					</div>
				</div>
			</div>
			
		</div>


		<div>
			<aside>
				<div id="asideProfile" class="aside-box">
					<!-- <h3 class="aside-title">个人资料</h3> -->
					<div class="profile-intro d-flex">
						<div class="avatar-box d-flex justify-content-center flex-column">
							<a href="#" > 
								<img src="images/touxiang.jpg" class="avatar_pic">
							</a>
						</div>
						<div class="user-info d-flex justify-content-center flex-column">
							<p class="name csdn-tracking-statistics tracking-click" data-mod="popu_379">
								<a href="#" target="_blank" class="" id="uid">站在山顶看世界</a>
							</p>
						</div>
						<div class="opt-box">
							<a>关注</a>
						</div>
						
						<!-- 
						<div class="opt-box d-flex justify-content-center flex-column">
							<span class="csdn-tracking-statistics tracking-click" data-mod="popu_379"> 
									<a class="btn btn-sm btn-red-hollow attention" id="btnAttent"
										target="_blank">关注</a>
							</span>
						</div>
						 -->
					</div>
					<div class="data-info d-flex item-tiling">
						<dl class="text-center" title="6">
							<dt>
								<a href="#">原创</a>
							</dt>
							<dd>
								<a href="#"><span
									class="count">6</span></a>
							</dd>
						</dl>
						<dl class="text-center" id="fanBox" title="0">
							<dt>粉丝</dt>
							<dd>
								<span class="count" id="fan">0</span>
							</dd>
						</dl>
						<dl class="text-center" title="0">
							<dt>收藏</dt>
							<dd>
								<span class="count">0</span>
							</dd>
						</dl>
						<dl class="text-center" title="0">
							<dt>评论</dt>
							<dd>
								<span class="count">0</span>
							</dd>
						</dl>
					</div>
			</div>		
				<div id="asideNewArticle" class="aside-box">
					<h3 class="aside-title">最新攻略</h3>
					<div class="aside-content">
						<ul
							class="inf_list clearfix csdn-tracking-statistics tracking-click"
							data-mod="popu_382">
							<li class="clearfix"><a
								href="#" target="_blank">jms异步远程通信</a></li>
							<li class="clearfix"><a
								href="#" target="_blank">eclipse3.7版本中反编译class文件查看源码</a></li>
							<li class="clearfix"><a
								href="#" target="_blank">基于CXF的webservice开发</a></li>
							<li class="clearfix"><a
								href="#" target="_blank">oracle中execute immediate用法</a></li>
							<li class="clearfix"><a
								href="#" target="_blank">el表达式和ognl表达式如何取值</a></li>
						</ul>
					</div>
				</div>
				<div id="asideCategory" class="aside-box flexible-box">
					<h3 class="aside-title">个人分类</h3>
					<div class="aside-content">
						<ul>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2170323">
									<span class="title oneline">jsp</span> <span
									class="count float-right">3篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2604955">
									<span class="title oneline">Struts2</span> <span
									class="count float-right">1篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2604963">
									<span class="title oneline">java</span> <span
									class="count float-right">2篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2637429">
									<span class="title oneline">webservice</span> <span
									class="count float-right">2篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2646927">
									<span class="title oneline">Spring</span> <span
									class="count float-right">1篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2727633">
									<span class="title oneline">java 线程</span> <span
									class="count float-right">2篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2727647">
									<span class="title oneline">网络编程</span> <span
									class="count float-right">1篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2748803">
									<span class="title oneline">oralce</span> <span
									class="count float-right">1篇</span>
							</a></li>
							<li><a class="clearfix"
								href="https://blog.csdn.net/songfanxuguirong/article/category/2773583">
									<span class="title oneline">Jms</span> <span
									class="count float-right">1篇</span>
							</a></li>
						</ul>
					</div>
					<p class="text-center">
						<a class="btn btn-link-blue flexible-btn"
							data-fbox="aside-archive">展开</a>
					</p>
				</div>
				<div id="asideArchive" class="aside-box flexible-box">
					<h3 class="aside-title">归档</h3>
					<div class="aside-content">
						<ul class="archive-list">
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2015/01">
									2015年1月 <span class="count float-right">2篇</span>
							</a></li>
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2014/12">
									2014年12月 <span class="count float-right">3篇</span>
							</a></li>
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2014/11">
									2014年11月 <span class="count float-right">3篇</span>
							</a></li>
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2014/10">
									2014年10月 <span class="count float-right">3篇</span>
							</a></li>
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2014/09">
									2014年9月 <span class="count float-right">2篇</span>
							</a></li>
							<!--归档统计-->
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/month/2014/04">
									2014年4月 <span class="count float-right">1篇</span>
							</a></li>
						</ul>
					</div>
					<p class="text-center">
						<a class="btn btn-link-blue flexible-btn"
							data-fbox="aside-archive">展开</a>
					</p>
				</div>
				<div id="asideHotArticle" class="aside-box">
					<h3 class="aside-title">热门攻略</h3>
					<div class="aside-content">
						<ul
							class="hotArticle-list csdn-tracking-statistics tracking-click"
							data-mod="popu_521">
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/details/22990779"
								target="_blank">如何在jsp中显示本地计算机上的图片文件</a>
								<p class="read">
									阅读量：<span>5472</span>
								</p></li>
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/details/41316623"
								target="_blank">线程中释放锁的方式</a>
								<p class="read">
									阅读量：<span>4047</span>
								</p></li>
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/details/41007129"
								target="_blank">get请求中文乱码问题</a>
								<p class="read">
									阅读量：<span>1826</span>
								</p></li>
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/details/40143835"
								target="_blank">如何调用外部webservice 接口来发送短信</a>
								<p class="read">
									阅读量：<span>950</span>
								</p></li>
							<li><a
								href="https://blog.csdn.net/songfanxuguirong/article/details/40304007"
								target="_blank">httpinvoke远程调用外部系统方法实例</a>
								<p class="read">
									阅读量：<span>565</span>
								</p></li>
						</ul>
					</div>
				</div>
			</aside>



		</div>
	</div>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>