<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>meishi</title>
    <!-- Css Folder -->
    <link href="${ctx }/css/list/bootstrap.css" rel="stylesheet">
    <link href="${ctx }/css/list/font-awesome.css" rel="stylesheet">
    <link href="${ctx }/css/list/color.css" rel="stylesheet">
    <link href="${ctx }/css/list/style.css" rel="stylesheet">
    <link href="${ctx }/css/list/themetypo.css" rel="stylesheet">
    <link href="${ctx }/css/home/header.css" rel="stylesheet">
    <link href="${ctx }/css/home/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/css/home/swiper.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/layui.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="${ctx }/js/home/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx }/js/home/bootstrap.min.js"></script>
<script src="${ctx }/js/home/swiper.min.js"></script>
<script src="${ctx }/js/home/main.js"></script>
<style type="text/css">
.label-selected{
	width: 100%;
	min-height:38px;
	margin:10px 0;
	border:1px solid #ccc;
	background-color: #fff;
	position: relative;
}
.cell{
	display: block;
	width:90px;
	height:28px;
	line-height: 28px;
	border:3px;
	background:#009688;
	color:#fff;
	text-align: center;
}
.label-selected li {
	display: inline-block;
	height: 27px;
	line-height: 27px;
	font-size: .8rem;
	padding: 0 1rem;
	border: 1px solid #e6e6e6;
	border-radius: 2px;
	cursor: pointer;
	margin: 4px 2px;
	color: #666;
}
#labelItem{
	margin-bottom: 10px;
	display: none;
}
.label-item {
	border: 1px solid #e6e6e6;
	padding: 10px;
	border-radius: 0 2px 2px 0;
	position: relative;
	overflow: hidden;
	background: #fff;
}
.label-item li {
	display: inline-block;
	height: 27px;
	line-height: 27px;
	font-size: .8rem;
	padding: 0 1rem;
	border: 1px solid #e6e6e6;
	border-radius: 2px;
	cursor: pointer;
	margin-bottom: 5px;
	margin-left: 2px;
	color: #666;
}
.label-item .selected{
	color:#ccc;
}
</style>
  </head>
  <body>
  <jsp:include page="header.jsp" flush="true"></jsp:include>
    <!--// Content //-->
    <div class="kd-content">
      <!--// Page Section //-->
      <section class="kd-pagesection" style=" padding: 0px 0px 0px 0px; background: #ffffff; ">
        <div class="container">
          <div class="row">

            <div class="col-md-12">
              <div class="col-md-9">
              <!--// Blog Large //-->
                <div class="kd-section-title"><h3>美景</h3></div>
                <div class="kd-blog-list kd-bloggrid">
                  <div class="row">
                    <c:forEach items="${page.list }" var="scene">
                    <article class="col-md-3">
                      <div class="bloginner">
                        <figure><a href="/sence/singlesence?id=${scene.sceneId }"><img src="${scene.img }" alt=""></a>
                          <figcaption><a href="#" class="fa fa-plus-heart"></a></figcaption>  
                        </figure>
                        <section class="kd-bloginfo">
                          <h2 class="tiezi_text"><a href="${ctx }/sence/singlesence?id=${scene.sceneId }">${scene.sname }</a></h2>
                          <ul class="kd-postoption">
                            <li><a href="#" class="thcolorhover"></a>建议游玩时长：${scene.playtime }</li>
                          </ul>
                          <div class="kd-usernetwork">
                            <ul class="kd-blogcomment">
                                <li><i class="fa fa-eye"></i>${scene.looktimes }</li>
                              <li><i class="fa fa-heart-o"></i>${scene.shoucangtimes }</li>
                            </ul>
                          </div>
                        </section>
                      </div>
                    </article>
               </c:forEach>
                  </div>
                </div>
                <div class="pagination-wrap">
                  <div class="pagination">
                    <a href="${ctx }/sence/allsence?pageNum=1">首页</a>
                    <a href="${ctx }/sence/allsence?pageNum=${page.prePageNum }">上一页</a>
                    <a href="${ctx }/sence/allsence?pageNum=${page.nextPageNum }">下一页</a>
                    <a href="${ctx }/sence/allsence?pageNum=${page.totalPageNum }">末页</a>
                  </div>
                </div>
              </div>
              <!--// Blog Large //-->

              <aside class="col-md-3">
                
               <div class="widget widget_search">
                  <div class="kd-section-title"><h3>搜索地点</h3></div>
                  <form action="${ctx }/sence/findbyname" method="post">
                    <input type="text" placeholder="搜索地名" name="name">
                    <input type="submit" value="">
                    <i class="fa fa-search"></i>
                  </form>
                </div>
                
                <div class="widget widget_tab">
                  <div class="kd-bookingtab">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">热门景点</a></li>
                      
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                      <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="widget-blogpost">
                          <ul>
                          <c:forEach items="${hotscene }" var="hots">
                            <li>
                              <figure><a href="${ctx }/sence/singlesence?id=${hots.sceneId}"><img alt="" src="${hots.img}"/></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="${ctx }/sence/singlesence?id=${hots.sceneId}">${hots.sname }</a></h6>
                                
                              </div>
                            </li>
                            </c:forEach>
                          </ul>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>
              
                <div class="widget widget_tag">
                    <!--kd-widget-title-->
                  <div class="kd-widget-title"><h4>标签</h4></div>
                  <form action="${ctx }/tagscene/kmeans" method="post">
                  <div class="label-selected">
						<a href="javascript:;" class="layui-btn layui-btn-sm show-labelitem" style="float: right; padding:2px; margin:2px;display: block;line-height: 26px;">展开 </a>
						<a href="javascript:;" class="layui-btn layui-btn-sm hide-labelitem" style="float: right;padding:2px; ;  margin:2px;display: none;line-height: 26px;">收起</a>
						<input type="hidden" name="label">
				  </div>
				  <div class="layui-col-md12" id="labelItem">
					  <!--标签库-->
					  <div class="label-item">
						<li data="美食"><span>美食</span></li>
						<li data="人文"><span>人文</span></li>
						<li data="自驾"><span>自驾</span></li>
						<li data="骑行"><span>骑行</span></li>
						<li data="探险"><span>探险</span></li>
						<li data="购物"><span>购物</span></li>
						<li data="赏秋"><span>赏秋</span></li>
						<li data="温泉"><span>温泉</span></li>
						<li data="圣诞"><span>圣诞</span></li>
						<li data="赏樱"><span>赏樱</span></li>
						<li data="第一次"><span>第一次</span></li>
						<li data="潜水"><span>潜水</span></li>
						<li data="独自一人"><span>独自一人</span></li>
						<li data="亲子"><span>亲子</span></li>
						<li data="徒步"><span>徒步</span></li>
						<li data="登山"><span>登山</span></li>
						<li data="暑假"><span>暑假</span></li>
						<li data="婚纱"><span>婚纱</span></li>
						<li data="跨年"><span>跨年</span></li>
						<li data="漫游"><span>漫游</span></li>
						<li data="摄影"><span>摄影</span></li>
						<li data="短途周末"><span>短途周末</span></li>
						<li data="国庆"><span>国庆</span></li>
						<li data="清明"><span>清明</span></li>
						<li data="五一"><span>五一</span></li>
						<li data="海滨海岛"><span>海滨海岛</span></li>
						<li data="踏春"><span>踏春</span></li>
						<li data="环游"><span>环游</span></li>
						<li data="古镇"><span>古镇</span></li>
						<li data="万圣节"><span>万圣节</span></li>
						<li data="深度游"><span>深度游</span></li>
						<li data="赏枫"><span>赏枫</span></li>
						<li data="毕业游"><span>毕业游</span></li>
						<li data="穷游"><span>穷游</span></li>
						<li data="闺蜜"><span>闺蜜</span></li>
						<li data="中秋节"><span>中秋节</span></li>
						<li data="春节"><span>春节</span></li>
						<li data="三五好友"><span>三五好友</span></li>
						<li data="情侣"><span>情侣</span></li>
						<li data="学生"><span>学生</span></li>
						<li data="端午"><span>端午</span></li>
						<li data="滑雪"><span>滑雪</span></li>
						<li data="轮船"><span>游轮</span></li>
						<li data="家庭"><span>家庭</span></li>
						<li data="蜜月"><span>蜜月</span></li>
						<li data="冬季"><span>冬季</span></li>
						<li data="暑假"><span>暑假</span></li>
						<li data="夏季"><span>夏季</span></li>
					  </div>
					</div>
					<input type="submit" style="width:50px;height:25px" value="获取" value="" id="cell">
					</form>
                </div>
                
              </aside>

            </div>

          </div>
        </div>
      </section>
    </div>
    <!--// Content //-->
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
    
<script type="text/javascript" src="${ctx }/tag/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/tag/layer.js"></script>
<script type="text/javascript">	
$(function(){
  $(".show-labelitem").on("click",function(){
    $(this).hide();
    $(".hide-labelitem").show();
    $("#labelItem").show();
  });
  $(".hide-labelitem").on("click",function(){
    $(this).hide();
    $(".show-labelitem").show();
    $("#labelItem").hide();
  });
  $(".label-item").on("click","li",function(){
    var id = $(this).attr("data");
    var text = $(this).children("span").html();
    var labelHTML = "<li data='"+id+"''>x "+text+"</li>";
    if($(this).hasClass("selected")){
      return false;
    }else if($(".label-selected").children("li").length >= 8){
      layer.msg("最多可以选择8个哦");
      return false;
    }
    $(".label-selected").append(labelHTML);
    val = '';
    for(var i = 0; i < $(".label-selected").children("li").length; i++){
      val += $(".label-selected").children("li").eq(i).attr("data")+',';
    }
    $("input[name='label']").val(val);
    $(this).addClass("selected");
  });
  var val = "";
  $(".label-selected").on("click","li",function(){
    var id = $(this).attr("data");
    val = '';
    $(this).remove();
    for(var i = 0; i < $(".label-selected").children("li").length; i++){
      val += $(".label-selected").children("li").eq(i).attr("data")+',';
    }
    $("input[name='label']").val(val);
    $(".label-item").find("li[data='"+id+"']").removeClass("selected");
  });


  //点击更换标签
  var limit = 0;
  $(".replacelable").on("click",function(){
    layer.load(1);
    limit += 32;
    $.ajax({
      url:window.location.href,
      type:"post",
      datatype:"json",
      data:{
        labellimit:limit
      },
      success:function(data){
        layer.closeAll('loading');
        $(".label-item").find("li").remove();//删除原先所有，本来想让数据表随机搜索的，想着有点mmp，就没搞，用的是limit
        var html = '';
        for(var i in data){
          html += "<li data=\""+data[i].term_id+"\">x<span>"+data[i].name+"</span></li>";//拼接标签
        }
        $(".label-item").append(html);//追加至文档
      },
      error:function(){
        layer.closeAll('loading');
        layer.msg("错误~~~");
      }
    })
  })
})
</script>
    
  </body>
  
</html>