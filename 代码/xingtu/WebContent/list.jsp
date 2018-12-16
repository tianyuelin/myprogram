<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Travel</title>

    <!-- Css Folder -->
    <link href="css/list/bootstrap.css" rel="stylesheet">
    <link href="css/list/font-awesome.css" rel="stylesheet">
    <link href="css/list/color.css" rel="stylesheet">
    <link href="css/list/style.css" rel="stylesheet">
    <link href="css/list/themetypo.css" rel="stylesheet">
    <link href="css/home/header.css" rel="stylesheet">
    <link href="css/home/bootstrap.min.css" rel="stylesheet">
    <link href="css/home/swiper.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/home/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/home/bootstrap.min.js"></script>
<script src="js/home/swiper.min.js"></script>
<script src="js/home/main.js"></script>
  </head>
  <body>
  <jsp:include page="header.jsp" flush="true"></jsp:include>
    <!--// Content //-->
    <div class="kd-content" style="padding-top: 5%">
      <!--// Page Section //-->
      <section class="kd-pagesection" style=" padding: 0px 0px 0px 0px; background: #ffffff; ">
        <div class="container">
          <div class="row">

            <div class="col-md-12">
              <div class="col-md-8">
              <!--// Blog Large //-->
                <div class="kd-section-title"><h3>热门攻略</h3></div>
                <div class="kd-blog-list kd-bloggrid">
                  <div class="row">
                    <article class="col-md-6">
                      <div class="bloginner">
                        <figure><a href="routepic.jsp"><img src="img/blog1-grid.jpg" alt=""></a>
                          <figcaption><a href="#" class="fa fa-plus-heart"></a></figcaption>  
                        </figure>
                        <section class="kd-bloginfo">
                          <h2 class="tiezi_text"><a href="routepic.jsp">发帖人题目</a></h2>
                          <ul class="kd-postoption">
                            <li><a href="#" class="thcolorhover">作者</a></li>
                            <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                          </ul>
                          <p>旅游路线</p>
                          <div class="kd-usernetwork">
                            <ul class="kd-blogcomment">
                                <li><a href="#" class="thcolorhover"><i class="fa fa-eye"></i>565</a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>

                             
                            </ul>
                            <div class="kd-social-network">
                              <ul>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-qq"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weixin"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weibo"></i></a></li>
         
                              </ul>
                            </div>
                          </div>
                        </section>
                      </div>
                    </article>
                    <article class="col-md-6">
                      <div class="bloginner">
                        <figure><a href="#"><img src="img/blog2-grid.jpg" alt=""></a>
                          <figcaption><a href="#" class="fa fa-plus-heart"></a></figcaption>
                        </figure>
                        <section class="kd-bloginfo">
                          <h2 class="tiezi_text"><a href="#"> 发帖人题目</a></h2>
                          <ul class="kd-postoption">
                            <li><a href="#" class="thcolorhover">作者 </a></li>
                            <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                          </ul>
                          <p>旅游路线</p>
                          <div class="kd-usernetwork">
                            <ul class="kd-blogcomment">
                                <li><a href="#" class="thcolorhover"><i class="fa fa-eye"></i>565</a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                            </ul>
                            <div class="kd-social-network">
                              <ul>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-qq"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weixin"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weibo"></i></a></li>
                              </ul>
                            </div>
                          </div>
                        </section>
                      </div>
                    </article>
                    <article class="col-md-6">
                      <div class="bloginner">
                        <figure><a href="#"><img src="img/blog3-grid.jpg" alt=""></a>
                          <figcaption><a href="#" class="fa fa-plus-heart"></a></figcaption>
                        </figure>
                        <section class="kd-bloginfo">
                          <h2 class="tiezi_text"><a href="#"> 发帖人题目</a></h2>
                          <ul class="kd-postoption">
                            <li><a href="#" class="thcolorhover">作者 </a></li>
                            <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                          </ul>
                          <p>旅游路线</p>
                          <div class="kd-usernetwork">
                            <ul class="kd-blogcomment">
                                <li><a href="#" class="thcolorhover"><i class="fa fa-eye"></i>565</a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                            </ul>
                            <div class="kd-social-network">
                              <ul>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-qq"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weixin"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weibo"></i></a></li>
                                
                              </ul>
                            </div>
                          </div>
                        </section>
                      </div>
                    </article>
                    <article class="col-md-6">
                      <div class="bloginner">
                        <figure><a href="#"><img src="img/blog4-grid.jpg" alt=""></a>
                          <figcaption><a href="#" class="fa fa-plus-heart"></a></figcaption>
                        </figure>
                        <section class="kd-bloginfo">
                          <h2 class="tiezi_text"><a href="#">发帖人题目</a></h2>
                          <ul class="kd-postoption">
                            <li><a href="#" class="thcolorhover">作者 </a></li>
                            <li><time datetime="2008-02-14 20:00">| January 15, 2015</time></li>
                          </ul>
                          <p>旅游路线</p>
                          <div class="kd-usernetwork">
                            <ul class="kd-blogcomment">
                                <li><a href="#" class="thcolorhover"><i class="fa fa-eye"></i>565</a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-comments-o"></i> 15</a></li>
                              <li><a href="#" class="thcolorhover"><i class="fa fa-heart-o"></i> 456</a></li>
                            </ul>
                            <div class="kd-social-network">
                              <ul>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-qq"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weixin"></i></a></li>
                                <li><a href="#" class="thcolorhover"><i class="fa fa-weibo"></i></a></li>
                              </ul>
                            </div>
                          </div>
                        </section>
                      </div>
                    </article>
                  </div>
                </div>
                <div class="pagination-wrap">
                  <div class="pagination">
                    <a href="${ctx }/strategy/allStrategy?pageNum=1">首页</a>
                    <a href="${ctx }/strategy/allStrategy?pageNum=${page.prePageNum }">上一页</a>
                    <a href="${ctx }/strategy/allStrategy?pageNum=${page.nextPageNum }">下一页</a>
                    <a href="${ctx }/strategy/allStrategy?pageNum=${page.totalPageNum }">末页</a>
                  </div>
                </div>
              </div>
              <!--// Blog Large //-->

              <aside class="col-md-4">
                
               <div class="widget widget_search">
                  <div class="kd-section-title"><h3>搜索</h3></div>
                  <form>
                    <input type="text" placeholder="搜索要去的地名">
                    <input type="submit" value="">
                    <i class="fa fa-search"></i>
                  </form>
                </div>
                
                <div class="widget widget_tab">
                  <div class="kd-section-title"><h3>更多攻略</h3></div>
                  <div class="kd-bookingtab">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">最热攻略</a></li>
                      <li><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" class="new_gonglv">最新攻略</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                      <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="widget-blogpost">
                          <ul>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <div role="tabpanel" class="tab-pane" id="profile">
                        <div class="widget-blogpost">
                          <ul>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                            <li>
                              <figure><a href="#"><img alt="" src="img/widget1.jpg"></a></figure>
                              <div class="kd-post-info">
                                <h6><a href="#">发帖人题目</a></h6>
                                <time datetime="2008-02-14 20:00">January 15, 2015</time>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      
                    </div>

                  </div>
                </div>
              
                <div class="widget widget_tag">
                    <!--kd-widget-title-->
                  <div class="kd-widget-title"><h3>标签</h3></div>
                  <div class="kd-tag">
                    <a href="#"><H6>家庭</H6></a>
                    <a href="#"><h6>闺蜜</h6></a>
                    <a href="#"><h6>情侣</h6></a>
                    <a href="#"><h6>学生</h6></a>
                    <a href="#"><h6>一人游</h6></a>
                    <a href="#"><h6>三人以上</h6></a>
                  </div>
                </div>
                
              </aside>

            </div>

          </div>
        </div>
      </section>
    </div>
    <!--// Content //-->
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
    
  </body>
  
</html>

