
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="zxx">
<head>
    <base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="newStatic/css/bootstrap.min.css">

<link rel="stylesheet" href="newStatic/css/owl.carousel.min.css">

<link rel="stylesheet" href="newStatic/css/owl.theme.default.min.css">

<link rel="stylesheet" href="newStatic/css/boxicon.min.css">

<link rel="stylesheet" href="newStatic/css/flaticon.css">

<link rel="stylesheet" href="newStatic/css/magnific-popup.css">

<link rel="stylesheet" href="newStatic/css/meanmenu.css">

<link rel="stylesheet" href="newStatic/css/nice-select.css">

<link rel="stylesheet" href="newStatic/css/style.css">

<link rel="stylesheet" href="newStatic/css/responsive.css">

<title>Jovie - Job Board & Portal HTML Template</title>
    <style>
        .span{
            color:red;
            font-weight:bold;
        }
    </style>
</head>
<body>
<script type="text/javascript">
    function tocommonlogin()
    {

        var com_user=$.trim($("#com_user").val());
        var com_pwd=$.trim($("#com_pwd").val());
        if(com_user==null)
        {
            alert("用户名不能为空");
            return ;
        }else if(com_pwd==null)
        {
            alert("密码不能为空");
            return ;
        }
        $.ajax(
            {
                url:'http://localhost:8080/com_hnist_war_exploded/commonlogin',
                data: {
                    com_user:com_user,
                    com_pwd:com_pwd,
                },
                type:'post',
                dataType:'json',
                success:function (data)
                {
                    if(data.code==="1")
                    {
                        $("#msg").html("登录成功");
                        window.location.href('http://localhost:8080/com_hnist_war_exploded/tocommonlogin');

                    }else if(data.code=="0")
                    {
                        $("#msg").html("登录失败");
                    }else
                    {
                        $("#msg").html("未知错误");
                    }
                }
            }

        )


    }

</script>
<div class="loader-content">
<div class="d-table">
<div class="d-table-cell">
<div class="sk-circle">
<div class="sk-circle1 sk-child"></div>
<div class="sk-circle2 sk-child"></div>
<div class="sk-circle3 sk-child"></div>
<div class="sk-circle4 sk-child"></div>
<div class="sk-circle5 sk-child"></div>
<div class="sk-circle6 sk-child"></div>
<div class="sk-circle7 sk-child"></div>
<div class="sk-circle8 sk-child"></div>
<div class="sk-circle9 sk-child"></div>
<div class="sk-circle10 sk-child"></div>
<div class="sk-circle11 sk-child"></div>
<div class="sk-circle12 sk-child"></div>
</div>
</div>
</div>
</div>



<div class="navbar-area">

<div class="mobile-nav">
<a href="" class="logo">
<img src="newStatic/picture/logo.png" alt="logo">
</a>
</div>

<div class="main-nav">
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light">
<a class="navbar-brand" href="">
<img src="newStatic/picture/logo.png" alt="logo">
</a>
<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
<ul class="navbar-nav m-auto">
<li class="nav-item">
<a href="#" class="nav-link dropdown-toggle active">主页&nbsp;</a>
<ul class="dropdown-menu">
</ul>
</li>

<li class="nav-item">
<a href="#" class="nav-link dropdown-toggle">工作&nbsp;</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a href="find-job.jsp" class="nav-link">搜索工作</a>
</li>
<li class="nav-item">
<a href="post-job.jsp" class="nav-link">发布工作</a>
</li>
<li class="nav-item">
<a href="job-list.jsp" class="nav-link">工作列表</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link dropdown-toggle">服务&nbsp;</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a href="../../qianduan/company.html" class="nav-link">公司</a>
</li>
<li class="nav-item">
<a href="../../qianduan/pricing.html" class="nav-link">价格&nbsp;</a>
</li>
<li class="nav-item">
<a href="#" class="nav-link dropdown-toggle">用户</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a href="../../qianduan/account.html" class="nav-link">账号</a>

<li class="nav-item">
<a href="../../qianduan/reset-password.html" class="nav-link">修改密码</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="404.html" class="nav-link">404 Page</a>
</li>
</ul>
</li>
<li class="nav-item">
<a href="#" class="nav-link dropdown-toggle">博客</a>
<ul class="dropdown-menu">
<li class="nav-item">
<a href="../../qianduan/blog.html" class="nav-link">博客主页&nbsp;</a>
</li>
<li class="nav-item">
<a href="../../qianduan/blog-details.html" class="nav-link">详情</a>
</li>
</ul>
</li>
</ul>
    <% if (session.getAttribute("username")==null) { %>
    <div class="other-option">
        <a href="sign-up.jsp" class="signup-btn">注册&nbsp;</a>
        <a href="sign-in.jsp" class="signin-btn">登录</a>
    </div>
    <% } else { %>
    <p>WelCome ${username}</p>
    <% } %>

</div>
</nav>
</div>
</div>
</div>


<section class="page-title title-bg12">
<div class="d-table">
<div class="d-table-cell">
<h2>登录</h2>
<ul>
<li>
<a href="default.jsp">主页</a>
</li>
<li>登录</li>
</ul>
</div>
</div>
<div class="lines">
<div class="line"></div>
<div class="line"></div>
<div class="line"></div>
</div>
</section>


<div class="signin-section ptb-100">
<div class="container">
<div class="row">
<div class="col-lg-6 col-md-8 offset-md-2 offset-lg-3">
<form class="signin-form">
<div class="form-group">
<label>输入账号</label>
<input type="email" class="form-control" placeholder="输入邮箱账号" required="" id="com_user">
</div>
<div class="form-group">
<label>输入密码</label>
<input type="password" class="form-control" placeholder="输入密码" required="" id="com_pwd">
</div>
<div class="signin-btn text-center">
<button type="submit" onclick="tocommonlogin()">登录</button>
</div>
    <span id="msg" name="msg" class="span text-center">

    </span>
<div class="other-signin text-center">
<span>或者使用其他账号</span>
<ul>
<li>
<a href="#">
<i class='bx bxl-google'></i>
</a>
</li>
<li>
<a href="#">
<i class='bx bxl-facebook'></i>
</a>
</li>
<li>
<a href="#">
<i class='bx bxl-twitter'></i>
</a>
</li>
<li>
<a href="#">
<i class='bx bxl-linkedin'></i>
</a>
</li>
</ul>
</div>
<div class="create-btn text-center">
<p>没有账号?
<a href="javascript:;">
点击创建账号
<i class='bx bx-chevrons-right bx-fade-right'></i>
</a>
</p>
</div>
</form>
</div>
</div>
</div>
</div>
<footer class="footer-area pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-3 col-sm-6">
<div class="footer-widget">
<div class="footer-logo">
<a href="">
<img src="newStatic/picture/logo.png" alt="logo">
</a>
</div>
<p>好好把握身边的朋友，他们都是缔造你生命意义的人。</p>
<div class="footer-social">
<a href="#" target="_blank"><i class='bx bxl-facebook'></i></a>
<a href="#" target="_blank"><i class='bx bxl-twitter'></i></a>
<a href="#" target="_blank"><i class='bx bxl-pinterest-alt'></i></a>
<a href="#" target="_blank"><i class='bx bxl-linkedin'></i></a>
</div>
</div>
</div>
<div class="col-lg-3 col-sm-6">
<div class="footer-widget pl-60">
<h3>求职者</h3>
<ul>
<li>
<a href="../../qianduan/account.html">
<i class='bx bx-chevrons-right bx-tada'></i>
账户
</a>
</li>
<li>
<a href="job-list.jsp">
<i class='bx bx-chevrons-right bx-tada'></i>
工作列表 </a>
</li>
<li>
<a href="sign-up.jsp">
<i class='bx bx-chevrons-right bx-tada'></i>
注册</a>
</li>
</ul>
</div>
</div>
<div class="col-lg-3 col-sm-6">
<div class="footer-widget pl-60">
<h3>快速链接</h3>
<ul>
<li>
<a href="">
<i class='bx bx-chevrons-right bx-tada'></i>
主页
</a>
</li>
<li>
<a href="about.html">
<i class='bx bx-chevrons-right bx-tada'></i>
详情
</a>
</li>
<li>

</li>
<li>
<a href="../../qianduan/pricing.html">
<i class='bx bx-chevrons-right bx-tada'></i>
价格
</a>
</li>
</ul>
</div>
</div>
<div class="col-lg-3 col-sm-6">
<div class="footer-widget footer-info">
<h3>公司信息</h3>
<ul>
<li>
<span>
<i class='bx bxs-phone'></i>
Phone:
</span>
<a href="tel:882569756">
+101 984 754
</a>
</li>
<li>
<span>
<i class='bx bxs-envelope'></i>
Email:
</span>
<a href="email-protection.html#89e0e7efe6c9e3e6ffe0eca7eae6e4">
<span class="__cf_email__" data-cfemail="ee87808881ae848198878bc08d8183">[email&#160;protected]</span>
</a>
</li>
<li>
<span>
<i class='bx bx-location-plus'></i>
Address:
</span>
123, Denver, USA
</li>
</ul>
</div>
</div>
</div>
</div>
</footer>
<div class="copyright-text text-center">
<p>Copyright &copy; 2022.Company name All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
</div>


<div class="top-btn">
<i class='bx bx-chevrons-up bx-fade-up'></i>
</div>


<script data-cfasync="false" src="newStatic/js/email-decode.min.js"></script><script src="newStatic/js/jquery.min.js"></script>
<script src="newStatic/js/bootstrap.bundle.min.js"></script>

<script src="newStatic/js/owl.carousel.min.js"></script>

<script src="newStatic/js/jquery.nice-select.min.js"></script>

<script src="newStatic/js/jquery.magnific-popup.min.js"></script>

<script src="newStatic/js/jquery.ajaxchimp.min.js"></script>

<script src="newStatic/js/form-validator.min.js"></script>

<script src="newStatic/js/contact-form-script.js"></script>

<script src="newStatic/js/meanmenu.js"></script>

<script src="newStatic/js/custom.js"></script>
</body>
</html>