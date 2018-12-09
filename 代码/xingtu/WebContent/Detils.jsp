<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
<link href="${ctx }/css/xiangqing/detils.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<script type="text/javascript" src="${ctx }/js/xiangqing/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	#allmap {width:100%;height:300px;overflow: hidden;margin:0;font-family:"微软雅黑"}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="move"></div>
<div class="content">
	<div class="first">
		<div class="title">
			<div class="name"><span id="scenename">故宫</span></div>
			<div class="icon">
			<a href="#" onmouseover="gone()" onmouseout="gone1()"><img alt="" src="img/icon/go.png" id="go" >&nbsp<span style="font-size: 16px;">去过&nbsp&nbsp&nbsp&nbsp</span></a>
			<a href="#" onmouseover="shoucang()" onmouseout="shoucang1()"><img alt="" src="img/icon/shoucang.png" id="shoucang" >&nbsp&nbsp<span style="font-size: 16px;">收藏</span></a>
			</div>
			<div><span style="font-size: 14px;color: #bcbcbc">北京市东城区景山前街4号</span></div>
		</div>
		<div class="pic">
			<div class="left_pic">
				<div class="imgs">
			<div class="product_introduce">
				<div class="product_picture" style="display: inline-block;">
					<div class="product_picture1">
						<a href="###"><img src="http://img1.qunarzz.com/wugc/p123/201211/19/a2045d091f02b25493835fbb.png_710x360_cc503e47.png"/></a>
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
								<h3>故宫</h3>
							</a>
						</div>
						<div class="picture_suo">
							<div class="picture_suo_t">
								<div class="picture_suo_img suo-img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p55/201211/04/fbcab3e5d6479ce893835fbb.jpg_710x360_a489e25d.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/wugc/p123/201211/19/a2045d091f02b25493835fbb.png_710x360_cc503e47.png" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p0/1410/e3/73da8d3e19cdc41c1932d4fcd22ec792.water.jpg_710x360_6029c0c3.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p0/1410/34/f540a04367d06820af4dfeaf0ad40257.water.jpg_710x360_c86bcf76.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p0/1410/9d/fe8109ab5df1c9c324e74284fa802e72.water.jpg_710x360_3777f44e.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p0/1410/be/d44bb81ae3218a627a65ded451326b2c.water.jpg_710x360_1aa4d515.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/sight/p0/1501/af/af47583adca3f972.water.jpg_710x360_d16edca5.jpg" />
								</div>
								<div class="picture_suo_img">
									<img class="lazy" src="http://img1.qunarzz.com/wugc/p238/201306/16/d9090c728fed64eb93835fbb.jpg_710x360_fc9d9d71.jpg" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="right_pic">
			<div class="right_pic1"> 
				<img alt="" src="http://img1.qunarzz.com/wugc/p238/201306/16/d9090c728fed64eb93835fbb.jpg_710x360_fc9d9d71.jpg">
			</div>
			<div class="right_pic2"> 
				<img alt="" src="http://img1.qunarzz.com/sight/p0/1410/e3/73da8d3e19cdc41c1932d4fcd22ec792.water.jpg_710x360_6029c0c3.jpg">
			</div>
		</div>
		</div>
	</div>
	<div class="f_nav">
		<ul id="menu">
 			<li><a href="#miaoshu" style="color:#c09b75">概述&nbsp&nbsp</a></li>
 			<li><a href="#menpiao">门票&nbsp&nbsp</a></li>
 			<li><a href="#opentime">开放时间</a></li>
 			<li style="border-right: none;"><a href="#route">交通路线</a></li>
		</ul>
	</div>
	<br>
	<div id="miaoshu">
	<p>又名紫禁城，是中国乃至世界上保存最完整，规模最大的木质结构古建筑群，被誉为“世界五大宫之首”。
由永乐帝朱棣下令建造，依据其布局与功用分为“外朝”与“内廷”两大部分。以乾清门为界，乾清门以南为外朝，以北为内廷。
外朝也称为“前朝”，以太和殿(金銮殿)、中和殿、保和殿三大殿为中心，是封建皇帝行使权力、举行盛典的地方。
内廷以乾清宫、交泰殿、坤宁宫后三宫为中心，以及东西两侧的东六宫和西六宫，是封建帝王与后妃居住之所，也就是俗称的“三宫六院”。
故宫内珍藏有大量珍贵文物，据统计有上百万件，占全国文物总数的六分之一。钟表馆每天11点和14点有钟表演示，不可错过。
故宫需要从南到北参观，午门是唯一的入口，出口是东华门和神武门。</p>
	</div>
	<div id="menpiao">
	<h3>门票</h3>
	成人票60人民币/学生票20人民币；内部景点:珍宝馆10人民币/钟表馆10人民币 (4月1日-10月31日 周二-周日)<br> 门票:成人票40人民币/学生票20人民币；内部景点:珍宝馆10人民币/钟表馆10人民币 (11月1日-次年3月31日 周二-周日)<br>半票:60岁及以上老年人、低保户，凭有效证件入园。<br>免票:离休干部凭离休证、1.2米以下儿童、残疾人、随团导游，凭有效证件入园。\ntips:\n学生票包含，大中小学生，除去成人教育、研究生。<br>故宫所有人需凭身份证入园。<br>故宫门票全部在官网提前十天预售，现场已不设购票窗口，但可微信支付入馆，每天入馆人数与网络售票共享。 \n“三八”妇女节，女性观众享受门票半价优惠；“六一”儿童节，14周岁以下儿童（含14周岁），免费参观。随同家长一人，享受半价优惠；“八一”建军节，现役军人凭有效证件，免费参观。
	</div>
	<div id="opentime">
	<h3>开放时间</h3>
	08:30-17:00；停止售票时间:16:00；停止入场时间:16:10 (4月1日-10月31日 周二-周日)<br>08:30-16:30；停止售票时间:15:30；停止入场时间:15:40 (11月1日-次年3月31日 周二-周日)<br>ntips:<br>除法定节假日外，全年实行周一全天闭馆。
	</div>
	<div id="route">
	<h3>交通路线</h3>
	公交：乘坐1路、2路、52路、59路、82路、99路、120路、126路、观光1线、专2路在“天安门东”站下车然后步行约900米到达午门。
	<br>地铁：乘坐地铁1号线在“天安门东”站下车，步行约900米，即可从午门进入故宫。（故宫博物院的南门）
	<br>故宫不设停车场，周边的公共停车场也较远，故不建议驾车前来。
	</div>
	<div class="map"><div id="allmap"></div></div>
</div>
<div style="clear: both;">
<%@include file="footer.jsp" %>
</div>
</body>
<script src="${ctx }/js/xiangqing/detils.js"></script>
<script src="${ctx }/js/xiangqing/jquery-1.4.2.js"></script>
<script src="${ctx }/js/xiangqing/new_file.js"></script>
</html>
<script type="text/javascript">
	// 百度地图API功能 
	var ad = document.getElementById("scenename").innerText;
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(ad, 17);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>