<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>城市选择组件</title>
	<link rel="stylesheet" type="text/css" href="css/city-select.css">
</head>
<body>
	<h2>城市选择</h2>
	<div class="city-select" id="single-select-1">
		<div class="city-info" >
			<div class="city-input">
				<input type="text" class="input-search" value="" placeholder="请选择城市" /> <!-- 从这里传入城市的选择 -->
			</div>
		</div>	
	</div><!-- end .city-select -->
	<script src="https://cdn.bootcss.com/jquery/1.8.1/jquery.js"></script>
	<script type="text/javascript" src="js/citydata.min.js"></script>
	<script type="text/javascript" src="js/citySelect-1.0.3.js"></script>
	
	
	
	<script type="text/javascript">
	$(function() {
		// 单选
		var singleSelect1 = $('#single-select-1').citySelect({
			dataJson: cityData,
			multiSelect: false,
			whole: true,
			shorthand: true,
			search: true,
			onInit: function () {
				console.log(this)
			},
			onTabsAfter: function (target) {
				console.log(target)
			},
			onCallerAfter: function (target, values) {
				console.log(JSON.stringify(values))
			}
		});

		// 单选设置城市（设置默认城市）
		singleSelect1.setCityVal('北京市');
	});
	</script>
</body>
</html>