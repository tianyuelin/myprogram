<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
<link href="js/dist/summernote.css" rel="stylesheet"/> -->
	<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
<link rel="stylesheet" href="css/user/createyj.css">
<link href="css/home/header.css" rel="stylesheet">
<link href="css/home/bootstrap.min.css" rel="stylesheet">
<script src="js/home/jquery-1.11.3.min.js"></script>
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
<script src="js/user/jquery.min.js"></script>
<script src="js/user/bootstrap.min.js"></script>
<!-- <script src="js/dist/summernote.js"></script>
<script src="js/dist/lang/summernote-zh-CN.js"></script>    中文 -->
<script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
<script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content1"]', {
				cssPath : 'kindeditor/plugins/code/prettify.css',
				uploadJson : 'kindeditor/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="yjall">
		<div class="yoush">
			<div class="shz">快来记录你的旅程吧</div>
		</div>
		<div class="tit1">
			<div class="toux">
				<img src="img/tou2.jpg">
			</div>
			<div class="nic">QTL</div>
			<div class="biaot">
			<form>
				为你的游记起一个skr的名字：<input type="text" style="width: 240px; height: 25px">
			</form>
			</div>
		</div>
		<div class="youxia">
			<div class="youzuo">
				<div class="mu">目录</div>
				<div class="qian">* &nbsp;&nbsp;前言</div>
				<div class="shuo">&nbsp;&nbsp;&nbsp;&nbsp;说说这次旅行</div>
				<div class="yi">* &nbsp;&nbsp;地点一</div>
				<div class="didi">&nbsp;&nbsp;&nbsp;&nbsp;未知地点</div>
				<div class="er">* &nbsp;&nbsp;地点二</div>
				<div class="didi">&nbsp;&nbsp;&nbsp;&nbsp;未知地点</div>
			</div>
			<div class="youzhong">
				<div class="ti1">
					<div class="lo1">
						<img src="img/lo1.png">详情
					</div>
					<div>
						<div class="dian1">
							<img src="img/bai.png">说说这次旅行
						</div>
						<!--%=htmlData%-->
						<form name="example" method="post" action="kindController">
							<textarea name="content1" cols="100" rows="8"
								style="width: 700px; height: 200px; visibility: hidden;"><%=htmlspecialchars(htmlData)%></textarea>
							<br /> <input type="submit" name="button" value="提交内容" />
						</form>
						<%!private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}%>
					</div>
				</div>
				<!-- <div class="ti2">
					<div class="lo2">
						<img src="img/lo2.png">地点一
					</div>
					<div>
						<div class="dian2">
							<img src="img/bai.png">未知地点
						</div>
						<div class="m">	
						    <div class="summernote">summernote 1</div>
						</div>
					</div>
				</div> -->
				<!--  <div class="ti3">
					<div class="lo3">
						<img src="img/lo3.png">景点二
					</div>
					<div>
						<div class="dian3">
							<img src="img/bai.png">未知地点
						</div>
						<form>
							<input type="text" style="width: 580px; height: 80px">
						</form>
					</div>
				</div> -->
			</div>
			<div class="youyou">
				<div class="cxtime">出行时间</div>
				<div class="myti">
				    <form>
				        <input type="text" style="width: 150px; height: 25px">
				    </form>
				</div>
				<div class="mypay">总共花费</div>
				<div class="myti">
				    <form>
				        <input type="text" style="width: 150px; height: 25px">
				    </form>
				</div>
				<div class="cxsj">出行时节</div>
				<div class="biaoq">
				    <div class="loqian"><a>立春</a></div>
				    <div class="loqian"><a>清明</a></div>
				    <div class="loqian"><a>初夏</a></div>
				    <div class="loqian"><a>盛夏</a></div>
				    <div class="loqian"><a>初秋</a></div>
				    <div class="loqian"><a>深秋</a></div>
				    <div class="loqian"><a>立冬</a></div>
				    <div class="loqian"><a>大雪</a></div>
				</div>
				<div class="cxlb">出行类别</div>
				<div class="biaoq">
				    <div class="loqian2"><a>独自出行</a></div>
				    <div class="loqian2"><a>家庭出游</a></div>
				    <div class="loqian2"><a>情侣约会</a></div>
				    <div class="loqian2"><a>闺蜜</a></div>
				    <div class="loqian2"><a>同事出游</a></div>
				</div>
				<div class="scgl">生成攻略</div>
			</div>
		</div>
	</div>
	<!-- <div class="youbi">
   </div> -->
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>