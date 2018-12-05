<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!-- header start -->
<header>
    <!-- nav start -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="blue_nav" style="display: inline-block;">
                    <ul class="nav navbar-nav col-md-12 col-sm-12">
                    <li class="logo">
                		<img src="img/logo.png">
                    </li>
                        <li class="col-md-nav"><a href="index.jsp">首页</a></li>
                        <li class="col-md-nav dropdown">
                            <a href="liebiao.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                旅行主题 <span class="glyphicon glyphicon-menu-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-list">
                                <li class="dropdown-item col-md-nav">
                                    <dl>
                                        <dt>北美洲</dt>
                                        <dd><a href="liebiao.jsp">意大利</a></dd>
                                        <dd><a href="#">美国</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="color-7">南极洲</dt>
                                        <dd><a href="#">南极</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="color-8">南美洲</dt>
                                        <dd><a href="#">阿根廷</a></dd>
                                        <dd><a href="#">智利</a></dd>
                                        <dd><a href="#">玻利维亚</a></dd>
                                        <dd><a href="#">古巴</a></dd>
                                        <dd><a href="#">巴西</a></dd>
                                        <dd><a href="#">哥伦比亚</a></dd>
                                        <dd><a href="#">秘鲁</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </li>
                        <li class="col-md-nav dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                他人行程<span class="glyphicon glyphicon-menu-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-list">
                                <li class="dropdown-item col-md-nav">
                                    <dl>
                                        <dt>北美洲</dt>
                                        <dd><a href="#">意大利</a></dd>
                                        <dd><a href="#">美国</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="color-7">南极洲</dt>
                                        <dd><a href="#">南极</a></dd>
                                    </dl>
                                    <dl>
                                        <dt class="color-8">南美洲</dt>
                                        <dd><a href="#">阿根廷</a></dd>
                                        <dd><a href="#">智利</a></dd>
                                        <dd><a href="#">玻利维亚</a></dd>
                                        <dd><a href="#">古巴</a></dd>
                                        <dd><a href="#">巴西</a></dd>
                                        <dd><a href="#">哥伦比亚</a></dd>
                                        <dd><a href="#">秘鲁</a></dd>
                                    </dl>
                                </li>
                            </ul>
                        </li>
                        <li class="col-md-nav"><a href="list.jsp"> 个性定制</a>
                        <ul class="dropdown-menu dropdown-list">
                                <li class="dropdown-item col-md-nav">
                                    <dl>
                                        <dd><a href="#">意大利</a></dd>
                                        <dd><a href="#">美国</a></dd>
                                    </dl>
                                </li>
                         </ul>
                        </li>
                        <li class="col-md-nav dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                关于我们 <span class="glyphicon glyphicon-menu-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-list">
                                <li class="dropdown-item col-md-nav">
                                    <dl>
                                        <dd><a href="#">意大利</a></dd>
                                        <dd><a href="#">美国</a></dd>
                                    </dl>
                                </li>
                         </ul>
                        </li>
                    </ul>
                </div>
                <div style="width: 20%;display: inline-block;position: relative;margin: auto;float: right;text-align: right;">
                    <div style="width: 50%;height: 1.25%;position:relative;display: inline-block;">
                 	<img src="img/addpeople.png" style="width: 30%">
                    <span style="font-size: 1em;"><a href="sign.jsp">登录/注册</a></span>
                   </div>
              </div>   
                
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid --> 
    </nav>
    <!-- nav end -->
</header>
<!-- header end -->