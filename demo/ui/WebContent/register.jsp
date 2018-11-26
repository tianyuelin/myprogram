<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="css/login/base.css"/>
    <link rel="stylesheet" href="css/login/register.css"/>
    <link rel="stylesheet" href="css/home/main.css"/>
    <link rel="stylesheet" href="css/home/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
    <div id="main">
        <div id="header">
        </div>
        <div class="container">
            <div class="bgPic"><img src="img/register/b2.jpg" alt=""/></div>
            <div class="register">
                <div class="title">
                    <span>注册</span>
                    <a href="signUp.jsp">去登录</a>
                </div>
                <form autocomplete="off">
                    <div class="default">
                        <p>用户名由3~10个数字和英文字符组成</p>
                        <input id="uname" name="uname" data-form="uname" type="text" placeholder="请输入用户名/手机号"/>
                        
                    </div>
                    <div class="default">
                        <p>密码由8~10个数字和英文字符组成</p>
                        <input id="upwd" name="upwd" data-form="upwd" type="password" placeholder="设置密码"/>
                        
                    </div>
                    <div class="default">
                        <p>请确认两次输入密码一致</p>
                        <input id="upwd_2" data-form="upwd_2" type="password" placeholder="确认密码"/>
                        
                    </div>
                    <div class="default">
                        <p>请输入正确的邮箱</p>
                        <input id="phone" name="phone" data-form="phone" type="text" placeholder="请输入您的邮箱"/>
                    </div>
                    <div class="submit">
                        <span class="notice">点击"注册"代表您同意遵守
                            <a href="#">用户协议</a>
                            和
                            <a href="#">隐私条款</a>
                        </span>
                        <button class="s_hover" data-form="submit">注册</button>
                    </div>
                </form>
            </div>
        </div>
        <div id="footer">
        </div>
    </div>

</body>
</html>