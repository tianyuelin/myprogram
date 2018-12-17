<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
	<title>计算驾车时间与距离</title>
</head>
<body>
	 <div id="allmap" style="display: none"></div> 
	 <div id="span1"></div>
	 <div id="span2"></div>
	 <div id="span3"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var id1= "故宫";
	var id2= "颐和园";
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
	var output = "两地之间的距离为";
	var dis = "距离：";
	var divertime = "驾车所需时长：";
	var bustime;
	var searchComplete = function (results){
		if (transit.getStatus() != BMAP_STATUS_SUCCESS){
			return ;
		}
		var plan = results.getPlan(0);
		dis+=plan.getDistance(true)+"<br>";
		divertime+=plan.getDuration(true)+"<br/>";
		bustime="公交所需时长："+plan.getDuration(true)+"<br/>"
	}
	var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){
			document.getElementById("span1").innerHTML=dis;
			document.getElementById("span2").innerHTML=divertime;
	}});
	
	var transit2 = new BMap.TransitRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){
			document.getElementById("span3").innerHTML=bustime;
		}});
	transit.search(id1,id2);
	transit2.search(id1,id2);
</script>
