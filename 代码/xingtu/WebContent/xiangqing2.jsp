<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<link href="${ctx }/css/xiangqing/xiangqing.css" rel="stylesheet">
<link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<link  rel="stylesheet" href="${ctx }/css/pinglun/main.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/css/pinglun/sinaFaceAndEffec.css" />

<script type="text/javascript" src="${ctx }/js/pinglun/jquery-1.8.3.min.js"></script>

<script type="text/javascript" src="${ctx }/js/xiangqing/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	#allmap {width:100%;height:300px;overflow: hidden;margin:0;font-family:"微软雅黑"}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
<title>森林河趣那主题公园</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="move"></div>
<div>
<div class="center_right">
	<div class="title">
		<span id="jing_title">${singlescene.sname }</span>
		<span class="shoucang">加入收藏<img src="${ctx }/img/shoucang.png"/></span>
	</div>
	<div class="imgs">
			<div class="product_introduce">
				<div class="product_picture" style="display: inline-block;">
					<div class="product_picture1">
						<a href="###"><img src="img/a1.png"  /></a>
						<span>点击查看更多图集</span>
					</div>
				</div>
			</div>
			<div class="tanchukuang_bg11"></div>
		<div class="picture">
			<div class="picture_top">
				<span>查看大图</span>
				<a class="clos" href="###">×</a>
			</div>
			<div class="picture_bottom">
				<div class="picture_left">
					<div class="picture_img">
						<div class="picture_img2">
							<img src="" class="showImg" />
						</div>
					</div>
					<div class="prev">
						<a href="###"><img src="img/zj.png"/></a>
					</div>
					<div class="next">
						<a href="###"><img src="img/yj.png"/></a>
					</div>
				</div>
					<div class="picture_right">
						<div class="picture_name">
							<a href="###">
								<h3>${singlescene.sname }</h3>
							</a>
						</div>
						<div class="picture_suo">
							<div class="picture_suo_t">
								<div class="picture_suo_img suo-img">
									<img class="lazy" src="img/a1.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a2.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a3.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a4.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a5.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a1.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a2.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a3.png" />
								</div>
							</div>
							<div class="picture_suo_t" style="display: none;">
								<div class="picture_suo_img">
									<img class="lazy" src="img/a1.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a2.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a3.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a4.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="img/a5.png" />
								</div>
							</div>
							<div class="picture_fenye">
								<div class="picture_prev">
									<img class="lazy" src="img/picture_prev.jpg" />
								</div>
								<span>1/2</span>
								<div class="picture_next">
									<img class="lazy" src="img/picture_next.jpg" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ljxq22">
					<a href="###"><img class="lazy" src="img/ljxq2222.jpg" /></a>
				</div>
			</div>
		</div>
	<div class="miaoshu">
		<div style="margin-bottom: 20px;">评分：<span style="font-size: 25px;font-weight: 600;color: red;">${singlescene.score }</span>/5</div>
		<div>地址：${singlescene.address }</div>
		<div>票价：${singlescene.ticketPrice }</div>
		<div>
			${singlescene.route }
		</div>
	</div>
	<div class="gaishu">
			<div id="jieshao">
				<p style=""><span>森林河趣那主题公园</span>，位于滹沱河景区，云龙大桥西侧。河北森林河投资集团投资兴建，占地面积1000余亩。森林河趣那主题公园地势开阔，环境优美，交通便利。充分整合优势资源，携同、稳健发展，定位于“泛农业文化休闲旅游综合体”。 集香草花卉种植观赏，婚纱、婚庆产业，时令果蔬种植，采摘，芳香产品深加工，露营，餐饮，游乐，大型活动举办为一体的综合农业休闲产业园区。
				</p>
				<h3>农业休闲观光</h3>
	<p>农业休闲观光区种植了多种绿色无公害蔬果和优质良种的小麦、谷物等，还有具观赏性的红高粱、朝天椒、向日葵以及弯曲藤蔓绿叶中的小葫芦。香草种植科普示范园4000平米，里面涵盖了全园主要的草本芳香植物，也是华北地区面积最大、品种最全的香草科普园。园内主要有薰衣草系列、罗勒系列、迷迭香、百里香、柠檬香茅、洋甘菊等上百个香草品种。</p>
	<h3>薰衣草花海</h3>
	<p>薰衣草受到时尚族群的青睐，因为它们有许多浪漫美好的寓意。薰衣草有着极大的内涵，蕴藏着正确的生命态度。全园以薰衣草等紫色香草为主，有着典雅优美的环境和艺术氛围，各种艺术雕塑，景观小品散步周围。薰衣花海区包括主题婚礼、婚纱摄影、薰衣草花海园等特色项目。</p>
	<h4>房车露营</h4>
	<p>露营地多种娱乐项目会给人们带来难忘的享受。房车露营：在保持原生态基础上的小白杨林区，回收利用原址枯树木材作为部分建筑景观用材，充分利用太阳能照明、风能、生物化学污水处理等方式，形成房车露营地。</p>
	<p>此外还有露营帐篷区。近距离接触大自然，远离城市的喧嚣，沐浴在阳光清风，呼吸着清新的空气，尽情享受自然的恩赐，为身心提供一个宁静放松的港湾。</p>
	
			</div>
			<div id="btn" onclick="toogle()"style="cursor:pointer;float: right; color: blue" >展开</div>
		</div>
		<div id="content" style="width:100%; height: auto;">
	<div class="wrap">
		<div class="comment">
			<div class="head-face">
				<img src="images/1.jpg"/>
				<p>我是鸟</p>
			</div>
			<div class="content">
				<div class="cont-box">
					<textarea class="text" placeholder="请输入..."></textarea>
				</div>
				<div class="tools-box">
					<div class="operator-box-btn"><span class="face-icon"  >☺</span>
					<span class="img-icon">▧</span></div>
					<div class="submit-btn"><input type="button" onClick="out()"value="提交评论" /></div>
				</div>
			</div>
		</div>
		<div id="info-show">
			<ul></ul>
		</div>
	</div>
</div>

<script type="text/javascript" src="js/pinglun/main.js"></script>
<script type="text/javascript" src="js/pinglun/sinaFaceAndEffec.js"></script>
<script type="text/javascript">
	// 绑定表情
	$('.face-icon').SinaEmotion($('.text'));
	// 测试本地解析
	function out() {
		var inputText = $('.text').val();
		$('#info-show ul').append(reply(AnalyticEmotion(inputText)));
	}
	
	var html;
	function reply(content){
		html  = '<li>';
		html += '<div class="head-face">';
		html += '<img src="images/1.jpg" / >';
		html += '</div>';
		html += '<div class="reply-cont">';
		html += '<p class="username">小小红色飞机</p>';
		html += '<p class="comment-body">'+content+'</p>';
		html += '<p class="comment-footer">2016年10月5日　回复　点赞54　转发12</p>';
		html += '</div>';
		html += '</li>';
		return html;
	}
</script>
</div>
<div class="center_left">
		<div class="map">
			<div id="allmap"></div>
		</div>
		<div style="font-size: 25px;font-weight: 600;margin-top: 10px; clear: both;">周边推荐</div>
		<div class="list">
			<div id="tab">
				<div class="tabList">
					<ul class="clearfix">
					<li class="cur">景点</li>
					<li>餐厅</li>
					<li>酒店</li>
					</ul>
				</div>
				<div class="tabCon">
				<div class="cur">
				<table style="padding-left: 10px;">
				<tr><td rowspan="2"><img src="img/quna.jpg" width="100px" height="80px;"/></td>
				<td><span>太平河公园</span></td>
				</tr>
					<tr><td><span>相距：1.4公里</span></td></tr>
				</table>
				</div>
				<div>红尘客栈、牛仔很忙、给我一首歌的时间、听妈妈的话</div>
				<div>被风吹过的夏天、江南、一千年以后</div>
				</div>
		</div>
		</div>
</div>
</div>

<%@include file="footer.jsp" %>

<script src="js/xiangqing/shousuo.js"></script>
<script src="js/xiangqing/jquery-1.4.2.js"></script>
<script src="js/xiangqing/new_file.js"></script>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能 
	var ad = document.getElementById("jing_title").innerText;
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(ad, 13);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("石家庄");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>