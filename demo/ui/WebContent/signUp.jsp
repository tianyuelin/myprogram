<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>用户登录/注册</title>
    <link rel="stylesheet" href="css/login/base.css"/>
    <link rel="stylesheet" href="css/login/login.css"/>
    <link rel="stylesheet" href="css/home/main.css"/>
    <link rel="stylesheet" href="css/home/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div class="container">
        <div class="bgPic"><img src="img/register/b3.jpg" alt=""/></div>
        <div class="register">
            <div class="title">
                <span>登录</span>
                <a href="register.jsp">去注册</a>
            </div>
            <form autocomplete="off">
                <div class="default">
                    
                    <input id="uname" name="uname" data-form="uname" type="text" placeholder="请输入用户名/手机号"/>
                </div>
                <div class="default">
                    
                    <input id="upwd" name="upwd" data-form="upwd" type="password" placeholder="请输入密码"/>
                </div>
                <div class="submit">
                        <span class="notice">
                            <a href="#">忘记密码</a>
                        </span>
                    <button class="s_hover" data-form="submit">登录</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>