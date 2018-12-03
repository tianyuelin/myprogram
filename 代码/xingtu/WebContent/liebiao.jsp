<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>

    <style type="text/css">

      .top1{
               border-bottom:1px solid #C0C0C0;
               text-align:center;
               float:left;
               margin-left:80px;
               margin-top:20px;
               width:1203px;
               height:100px;  
      }
      .left{
               float:left;
               
               width:30%; 
      }
      
      .right{
      
      }
      .left1{
               border-bottom:1px solid #C0C0C0;
               align:center;
               float:left;
               margin-top:20px;
               margin-left:30%;
               padding-bottom:20px;
               width:70%;
               
              
      }    
      
           .li{list-style:none}
       
      </style>
    <!-- Css Folder -->
    <link href="css/list/bootstrap.css" rel="stylesheet">
    <link href="css/list/bootstrap-theme.css" rel="stylesheet">
    <link href="css/list/font-awesome.css" rel="stylesheet">
    <link href="css/list/color.css" rel="stylesheet">
    <link href="css/list/style1.css" rel="stylesheet">
    <link href="css/list/themetypo.css" rel="stylesheet">
    <link href="css/home/header.css" rel="stylesheet">
    <link href="css/home/bootstrap.min.css" rel="stylesheet">
    <link href="css/home/swiper.min.css" rel="stylesheet">
    <link href="css/list/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
       <jsp:include page="header.jsp"></jsp:include>
       <div style="margin-top: 5%">
        <div>
            <!-- 上面的div -->
              <div class="top1">
                            <h1>美食</h1>
              </div>
         
            <!-- 下面的div -->
              <div>
              <!-- 左侧部分 -->    
               <div class="left">
                <!-- 左侧部分的第一个框 -->
                  <div class="left1" style="padding-left:">
                       <img src="img/map.png">
                  </div>
                <!-- 左侧部分的第二个框 -->
                  <div class="left1">
                  <form  method="post">
                  <h3>类型 </h3>
                    <ul>      
                      <li style="list-style:none"><input type="checkbox" name="mytype" value="canting">餐厅</li>
                      <li class="li"><input type="checkbox" name="mytype" value="tiandian">甜点</li>
                      <li class="li"><input type="checkbox" name="mytype" value="cafeiyucha">咖啡与茶</li>
                      <li class="li"><input type="checkbox" name="mytype" value="mianbao">面包糕点</li>
                      <li class="li"><input type="checkbox" name="mytype" value="jiuba">酒吧与酒馆</li>
                      <li class="li"><input type="checkbox" name="mytype" value="kuaican">快餐小吃</li>
                    </ul>
                  </form>  
                  </div>
                
               <!-- 左侧部分的第三个框 -->
                  <div class="left1">
                  <form  method="post">
                  <h3>餐时</h3>
                    <ul>      
                      <li class="li"><input type="checkbox" name="mytype" value="zaocan">早餐</li>
                      <li class="li"><input type="checkbox" name="mytype" value="zaowucan">早午餐</li>
                      <li class="li"><input type="checkbox" name="mytype" value="wucan">午餐</li>
                      <li class="li"><input type="checkbox" name="mytype" value="dinner">晚餐</li>
                    </ul>
                  </form>  
                  </div>
               
               
               <!-- 左侧部分的第四个框 -->
                  <div class="left1">
                  <form  method="post">
                  <h3>价格</h3>
                    <ul>      
                      <li class="li"><input type="checkbox" name="mytype" value="lowprice">平价美食 </li>
                      <li class="li"><input type="checkbox" name="mytype" value="middleprice">中等价位</li>
                      <li class="li"><input type="checkbox" name="mytype" value="highprice">高档餐饮</li>
                    </ul>
                  </form>  
                  </div>
                  
                  
                  
                  
                
                </div>

      
     
            <div class="col-md-8">
              
              <div class="kd-blog-list kd-blogmedium">
                <div class="row">
                  <div class="col-md-11">
                    <div class="bloginner">
                      <figure><a href="#"><img src="img/xiajiao.png" alt=""></a>
                        <figcaption><a href="#" class="fa fa-plus-circle"></a></figcaption>
                      </figure>
                      <div class="kd-bloginfo">
                        <h2><a href="#">虾饺</a></h2>
                        <ul class="kd-postoption">
                          <li><a href="#" class="thcolorhover">New </a></li>
                          <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                        </ul>
                        <p>虾饺是广东省的汉族传统小吃，属粤菜系，起源于广州郊外靠近河涌集市的茶居。那些地方盛产鱼虾，茶居师傅再配上猪肉、竹笋，制成肉馅。当时虾饺的外皮选用粘(大)米粉，皮质较厚，但由于鲜虾味美，很快流传开来。</p>
                        <div class="kd-usernetwork">
                          <ul class="kd-blogcomment">
                            <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                            <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                          </ul>
                          <div class="kd-social-network">
                            <ul>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-tumblr"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                   <div class="col-md-11">
                    <div class="bloginner">
                      <figure><a href="#"><img src="img/koushuixia.png" alt=""></a>
                        <figcaption><a href="#" class="fa fa-plus-circle"></a></figcaption>
                      </figure>
                      <div class="kd-bloginfo">
                        <h2><a href="#">口味虾</a></h2>
                        <ul class="kd-postoption">
                          <li><a href="#" class="thcolorhover">New </a></li>
                          <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                        </ul>
                        <p>口味虾又叫长沙口味虾、麻辣小龙虾、香辣小龙虾等，是湖南省著名的汉族小吃，以小龙虾制成，口味辣鲜香，色泽红亮，质地滑嫩，滋味香辣。20世纪末开始传遍全国，成为人们夏夜街边啤酒摊的经典小吃。</p>
                        <div class="kd-usernetwork">
                          <ul class="kd-blogcomment">
                            <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                            <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                          </ul>
                          <div class="kd-social-network">
                            <ul>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-tumblr"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="col-md-11">
                    <div class="bloginner">
                      <figure><a href="#"><img src="img/sandapao.png" alt=""></a>
                        <figcaption><a href="#" class="fa fa-plus-circle"></a></figcaption>
                      </figure>
                      <div class="kd-bloginfo">
                        <h2><a href="#">三大炮</a></h2>
                        <ul class="kd-postoption">
                          <li><a href="#" class="thcolorhover">New </a></li>
                          <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                        </ul>
                        <p> 三大炮是著名的四川地区汉族特色小吃，主要由糯米制成，由于在抛扔糯米团时，三大炮如“弹丸”一样，发出“当、当、当”的响声，分为“铁炮”，“火炮”，“枪炮”，故名总称“三大炮”。吃时配以“老鹰茶”，别有风味。三大炮有香甜可口、不腻不粘又化渣的特点，且价廉物美。</p>
                        <div class="kd-usernetwork">
                          <ul class="kd-blogcomment">
                            <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                            <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                          </ul>
                          <div class="kd-social-network">
                            <ul>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-tumblr"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-11">
                    <div class="bloginner">
                      <figure><a href="#"><img src="img/reganmian.png" alt=""></a>
                        <figcaption><a href="#" class="fa fa-plus-circle"></a></figcaption>
                      </figure>
                      <div class="kd-bloginfo">
                        <h2><a href="#">热干面</a></h2>
                        <ul class="kd-postoption">
                          <li><a href="#" class="thcolorhover">New </a></li>
                          <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                        </ul>
                        <p>　热干面是湖北省武汉市的汉族特色小吃，原本是武汉的特色美食，在湖北很多地方都十分受欢迎。随着湖北人在其他省市地人口增多，武汉热干面也在许多地方都能见到，是诸多人喜欢的面食之一。</p>
                        <div class="kd-usernetwork">
                          <ul class="kd-blogcomment">
                            <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                            <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                          </ul>
                          <div class="kd-social-network">
                            <ul>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-tumblr"></i></a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
        </div>
        </div>
        <div style="width: 100%;height: 5%;background-color: #374356;clear: both; color: white;text-align: center;margin-top: 3%;">© 2018 HEBEI NORMAL UNIVERSITY. DESIGNED BY BIGDATA QTL TEAM</div>
   </div>  
      <!--// Page Section //-->

   
    <!--// Content //-->
    <!-- jQuery (Necessary For JavaScript Plugins) -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/waypoints-min.js"></script>
    <script src="js/functions.js"></script>
    <script src="js/home/bootstrap.min.js"></script>
    <script src="js/home/jquery-1.11.3.min.js"></script>
    <script src="js/home/main.js"></script>
    <script src="js/home/swiper.min.js"></script>
  </body>
</html>

