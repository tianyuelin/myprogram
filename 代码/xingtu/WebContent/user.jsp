<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QTL的空间</title>
<link href="${ctx }/css/user/myuse.css" rel="stylesheet">
<link href="${ctx }/css/user/myhead.css" rel="stylesheet">
<link href="${ctx }/css/home/header.css" rel="stylesheet">
<link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
<script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<link rel="stylesheet" href="css/touxiang/cropper.min.css">
<link rel="stylesheet" href="css/touxiang/ImgCropping.css">
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div class="qn-header"  style="margin-top:5%">
		<div class="main-zt">
			<div class="user-info">
				<dt class="flpic">
					<div style="width: 100px;height: 100px;border-radius:50%;border: solid 1px #555;" id="replaceImg"  >
                     <img id="finalImg" src="${ctx }/${user.icon}" width="100% " style="border-radius:50%;">
                </div>
				</dt><!-- 个人头像 -->
				<dd class="flintro">
					<h3 class="intro-title">
						<span class="name" title="QTL">${user.username }</span>
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
					<div class="shu">${followedcount }</div>
					<div class="guzh">关注</div>
				</div>
				<div class="hz">|</div>
				<div class="fy">
					<div>${funscount }</div>
					<div>粉丝</div>
				</div>
			</div>
		</div>
		<div class="mynav">
			<ul id="mydao">
				<li class="item item-hover item-active" data-beacon="myhomepage"><a
					href="user.jsp">首页</a></li>
				<li class="item"><a
					href="${ctx }/photo.jsp"
					data-beacon="photos">相册</a></li>
				<li class="item"><a
					href="sixin.jsp"
					data-beacon="letter">消息</a></li>
				<li class="item"><a
					href="person.jsp"
					data-beacon="letter">个人信息</a></li>
				<li class="item"><a
					href="${ctx }/journey/citylist"
					data-beacon="letter">创建行程</a></li>
				<li class="item"><a
					href="${ctx }/strategy/opencreate"
					data-beacon="letter">创建攻略</a></li>
			</ul>
		</div>
	</div>
	<div class="qn-skin">
		<div class="qn-page">
		    <div class="flmainbox-left">
		          <div class="xxz1"><a href="#myxc">行程</a></div>
		          <div class="xxz2"><a href="#mygl">攻略</a></div>
		          <div class="xxz3"><a href="#mysc">收藏</a></div>
		          <div class="xxz4"><a href="#mygz">关注</a></div>
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
				          <c:if test="${strategys!=null }">
				          <c:forEach items="${strategys }" var="strategy">
				          <div class="gol1">
				              <div class="glbt1"><a href="${ctx }/strategy/singleStrategy?id=${strategy.sId}">${strategy.title }</a></div>
				              <div class="tpic1"><img src="${ctx }/${strategy.img}"></img></div>
				          </div>
				          </c:forEach>
				          </c:if>
				          <c:if test="${strategys==null }">
				          <div class="nostrategy">您还没有创建攻略！</div>
				          </c:if>
				    </div>
					<div id="mysc">
						<div class="zdsc">我的收藏</div>
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
					    <div class="zdgz">我的关注</div>
						<ul class="fans-listclrfix">
							<li class="myitem"><dl class="fans-info clrfix">
									<dt class="pic fl">
										<a href="//travel.qunar.com/space/1837996@qunar"
											target="_blank"><img src="${ctx }/img/tou5.jpg" /></a>
									</dt>
									<dd class="intro fr">
										<h3 class="name">
											<a href="//travel.qunar.com/space/1837996@qunar"
												target="_blank">任紫玉</a>
										</h3>
										<div class="info">
											<a href="//travel.qunar.com/space/notes/1837996@qunar"
												target="_blank">游记<span class="notes">30</span></a><a
												href="//travel.qunar.com/space/books/1837996@qunar"
												target="_blank">行程<span class="plan">1</span></a><a
												href="//travel.qunar.com/space/comments?userId=1837996@qunar"
												target="_blank">评论<span class="comment">33</span></a>
										</div>
										<p class="introduce">旅行摄影自由撰稿人，旅行达人。新...</p>
									</dd>
								</dl> <a data-uid="1837996@qunar" href="#" class="js-follow care-btn"></a><a
								href="#" class="private-btn" data-ui="privateMsg"
								data-uid="1837996" data-username="任紫玉"></a></li>
							<li class="myitem"><dl class="fans-info clrfix">
									<dt class="pic fl">
										<a href="//travel.qunar.com/space/298229@qunar"
											target="_blank"><img src="${ctx }/img/tou6.jpg" /></a>
									</dt>
									<dd class="intro fr">
										<h3 class="name">
											<a href="//travel.qunar.com/space/298229@qunar"
												target="_blank">不旅不婷</a>
										</h3>
										<div class="info">
											<a href="//travel.qunar.com/space/notes/298229@qunar"
												target="_blank">游记<span class="notes">11</span></a><a
												href="//travel.qunar.com/space/books/298229@qunar"
												target="_blank">行程<span class="plan">2</span></a><a
												href="//travel.qunar.com/space/comments?userId=298229@qunar"
												target="_blank">评论<span class="comment">52</span></a>
										</div>
										<p class="introduce">微信：abby4528 ,新浪微博：@Abby45</p>
									</dd>
								</dl> <a data-uid="298229@qunar" href="#" class="js-follow care-btn"></a><a
								href="#" class="private-btn" data-ui="privateMsg"
								data-uid="298229" data-username="不旅不婷"></a>
								</li>
							<li class="myitem"><dl class="fans-info clrfix">
									<dt class="pic fl">
										<a href="//travel.qunar.com/space/152966678@qunar"
											target="_blank"><img src="${ctx }/img/tou8.jpg" /></a>
									</dt>
									<dd class="intro fr">
										<h3 class="name">
											<a href="//travel.qunar.com/space/152966678@qunar"
												target="_blank">dszf4127</a>
										</h3>
										<div class="info">
											<a href="//travel.qunar.com/space/notes/152966678@qunar"
												target="_blank">游记<span class="notes">17</span></a><a
												href="//travel.qunar.com/space/books/152966678@qunar"
												target="_blank">行程<span class="plan">1</span></a><a
												href="//travel.qunar.com/space/comments?userId=152966678@qunar"
												target="_blank">评论<span class="comment">69</span></a>
										</div>
										<p class="introduce">陌生花开，可缓缓归矣...</p>
									</dd>
								</dl> <a data-uid="152966678@qunar" href="#"
								class="js-follow care-btn"></a><a href="#" class="private-btn"
								data-ui="privateMsg" data-uid="152966678"
								data-username="dszf4127"></a>
								</li>
							<li class="myitem"><dl class="fans-info clrfix">
									<dt class="pic fl">
										<a href="//travel.qunar.com/space/123265252@qunar"
											target="_blank"><img src="${ctx }/img/tou7.jpg" /></a>
									</dt>
									<dd class="intro fr">
										<h3 class="name">
											<a href="//travel.qunar.com/space/123265252@qunar"
												target="_blank">手边巴黎urruolan</a>
										</h3>
										<div class="info">
											<a href="//travel.qunar.com/space/notes/123265252@qunar"
												target="_blank">游记<span class="notes">56</span></a><a
												href="//travel.qunar.com/space/books/123265252@qunar"
												target="_blank">行程<span class="plan">3</span></a><a
												href="//travel.qunar.com/space/comments?userId=123265252@qunar"
												target="_blank">评论<span class="comment">6</span></a>
										</div>
										<p class="introduce">慢享6大洲34国 时尚旅行专栏作家 /...</p>
									</dd>
								</dl> <a data-uid="123265252@qunar" href="#"
								class="js-follow care-btn"></a><a href="#" class="private-btn"
								data-ui="privateMsg" data-uid="123265252"
								data-username="手边巴黎urruolan"></a>
								</li>
						</ul>
						<a href="#" class="btn-huan"> 更换一批</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<!--图片裁剪框 start-->
<div style="display: none" class="tailoring-container">
    <div class="black-cloth" onClick="closeTailor(this)"></div>
    <div class="tailoring-content">
            <div class="tailoring-content-one">
                <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                    <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="chooseImg" class="hidden" onChange="selectImg(this)">
                    选择图片
                </label>
                <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
            </div>
            <div class="tailoring-content-two">
                <div class="tailoring-box-parcel">
                    <img id="tailoringImg">
                </div>
                <div class="preview-box-parcel">
                    <p>图片预览：</p>
                    <div class="square previewImg"></div>
                    <div class="circular previewImg"></div>
                </div>
            </div>
            <div class="tailoring-content-three">
                <button class="l-btn cropper-reset-btn">复位</button>
                <button class="l-btn cropper-rotate-btn">旋转</button>
                <button class="l-btn cropper-scaleX-btn">换向</button>
                <button class="l-btn sureCut" id="sureCut">确定</button>
            </div>
        </div>
</div>
<!--图片裁剪框 end-->
<script type="text/javascript" src="js/touxiang/jquery.min.js"></script>
<script type="text/javascript" src="js/touxiang/cropper.min.js"></script>
<script type="text/javascript">
    //弹出框水平垂直居中
    (window.onresize = function () {
        var win_height = $(window).height();
        var win_width = $(window).width();
        if (win_width <= 768){
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": 0
            });
        }else{
            $(".tailoring-content").css({
                "top": (win_height - $(".tailoring-content").outerHeight())/2,
                "left": (win_width - $(".tailoring-content").outerWidth())/2
            });
        }
    })();

    //弹出图片裁剪框
    $("#replaceImg").on("click",function () {
        $(".tailoring-container").toggle();
    });
    //图像上传
    function selectImg(file) {
        if (!file.files || !file.files[0]){
            return;
        }
        var reader = new FileReader();
        reader.onload = function (evt) {
            var replaceSrc = evt.target.result;
            //更换cropper的图片
            $('#tailoringImg').cropper('replace', replaceSrc,false);//默认false，适应高度，不失真
        }
        reader.readAsDataURL(file.files[0]);
    }
    //cropper图片裁剪
    $('#tailoringImg').cropper({
        aspectRatio: 1/1,//默认比例
        preview: '.previewImg',//预览视图
        guides: false,  //裁剪框的虚线(九宫格)
        autoCropArea: 0.5,  //0-1之间的数值，定义自动剪裁区域的大小，默认0.8
        movable: false, //是否允许移动图片
        dragCrop: true,  //是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
        movable: true,  //是否允许移动剪裁框
        resizable: true,  //是否允许改变裁剪框的大小
        zoomable: false,  //是否允许缩放图片大小
        mouseWheelZoom: false,  //是否允许通过鼠标滚轮来缩放图片
        touchDragZoom: true,  //是否允许通过触摸移动来缩放图片
        rotatable: true,  //是否允许旋转图片
        crop: function(e) {
            // 输出结果数据裁剪图像。
        }
    });
    //旋转
    $(".cropper-rotate-btn").on("click",function () {
        $('#tailoringImg').cropper("rotate", 45);
    });
    //复位
    $(".cropper-reset-btn").on("click",function () {
        $('#tailoringImg').cropper("reset");
    });
    //换向
    var flagX = true;
    $(".cropper-scaleX-btn").on("click",function () {
        if(flagX){
            $('#tailoringImg').cropper("scaleX", -1);
            flagX = false;
        }else{
            $('#tailoringImg').cropper("scaleX", 1);
            flagX = true;
        }
        flagX != flagX;
    });

    //裁剪后的处理
    $("#sureCut").on("click",function () {
        if ($("#tailoringImg").attr("src") == null ){
            return false;
        }else{
            var cas = $('#tailoringImg').cropper('getCroppedCanvas');//获取被裁剪后的canvas
            var base64url = cas.toDataURL('image/png'); //转换为base64地址形式
            $("#finalImg").prop("src",base64url);//显示为图片的形式

            //关闭裁剪框
            closeTailor();
        }
    });
    //关闭裁剪框
    function closeTailor() {
        $(".tailoring-container").toggle();
    }
</script>