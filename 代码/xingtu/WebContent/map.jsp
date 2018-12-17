<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html,#allmap {width: 500px;height: 400px;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=no84ceXVi8gDw2sbzALgBU2HxUkcwEpM"></script>
	<title>计算驾车时间与距离</title>
</head>
<body>
	 <div id="allmap"></div> 
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var id1= "北京";
	var id2= "天津";
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
	var output = "两地之间的距离为";
	var searchComplete = function (results){
		if (transit.getStatus() != BMAP_STATUS_SUCCESS){
			return ;
		}
		var plan = results.getPlan(0);
		output += plan.getDuration(true) + "\n";                //获取时间
		output += "总路程为：" ;
		output += plan.getDistance(true) + "\n";             //获取距离
	}
	var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){        
			setTimeout(function(){alert(output)},"1000");	
	}});
	transit.search(id1,id2);
</script>
