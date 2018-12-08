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
                		<img src="${ctx }/img/logo.png">
                    </li>
                        <li class="col-md-nav"><a href="index.jsp">首页</a></li>
                        <li class="col-md-nav"><a href="#type">美食</a></li>
                        <li class="col-md-nav"><a href="#type">景点</a></li>
                        <li class="col-md-nav"><a href="index.jsp">他人攻略</a></li>
                        <li class="col-md-nav"><a href="list.jsp"> 个性定制</a>
                        <li class="col-md-nav dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                关于我们 <span class="glyphicon glyphicon-menu-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-list">
                                <li class="dropdown-item col-md-nav">
                                    <dl>
                                        <dd><a href="liebiao.jsp">使用攻略</a></dd>
                                        <dd><a href="liebiao.jsp">联系我们</a></dd>
                                    </dl>
                                </li>
                         </ul>
                        </li>
                    </ul>
                </div>
                <div style="width: 20%;display: inline-block;position: relative;margin: auto;float: right;text-align: right;">
                    <div style="width: 50%;height: 1.25%;position:relative;display: inline-block;">
                 	<img src="${ctx }/img/addpeople.png" style="width: 30%">
                    <span style="font-size: 1em;"><a href="sign.jsp">登录/注册</a></span>
                   </div>
              </div>   
                
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid --> 
    </nav>
    <!-- nav end -->
</header>
<!-- header end -->