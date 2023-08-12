<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="zxx">
<head>

<meta charset="utf-8">
 <base href="<%=basePath%>">
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

</head>
<body>

<title>Jovie - Job Board & Portal HTML Template</title>



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
       <a href="http://localhost:8080/com_hnist_war_exploded/default" class="nav-link dropdown-toggle active">主页&nbsp;</a>
       <ul class="dropdown-menu">
       </ul>
      </li>

      <li class="nav-item">
       <a href="#" class="nav-link dropdown-toggle">工作&nbsp;</a>
       <ul class="dropdown-menu">
        <li class="nav-item">
         <a href="http://localhost:8080/com_hnist_war_exploded/work/ToSelectWork" class="nav-link">搜索工作</a>
        </li>
        <c:if test="${role=='HR'}">
         <li class="nav-item">
          <a href="http://localhost:8080/com_hnist_war_exploded/work/ToAddWork" class="nav-link">发布工作</a>
         </li>
        </c:if>
        <li class="nav-item">
         <a href="http://localhost:8080/com_hnist_war_exploded/work/GetAllWork" class="nav-link">工作列表</a>
        </li>
       </ul>
      </li>

      <c:if test="${message!=null}">
      <li class="nav-item">
       <a href="#" class="nav-link dropdown-toggle">博客</a>
       <ul class="dropdown-menu">

        <li class="nav-item">
         <a href="http://localhost:8080/com_hnist_war_exploded/blog" class="nav-link">文章列表</a>
        </li>


       </ul>
      </li>
      <li class="nav-item">
       <a href="#" class="nav-link dropdown-toggle">服务&nbsp;</a>
       <ul class="dropdown-menu">
        <li class="nav-item">
         <a href="#" class="nav-link dropdown-toggle">用户</a>

         <ul class="dropdown-menu">
          <li class="nav-item">
           <a href="http://localhost:8080/com_hnist_war_exploded/Account?email=${email}" class="nav-link">账号</a>

          <li class="nav-item">
           <a href="http://localhost:8080/com_hnist_war_exploded/Toresetpwd" class="nav-link">修改密码</a>
          </li>
         </ul>

        </li>
        <c:if test="${role=='HR'}">
         <li class="nav-item">
          <a href="http://localhost:8080/com_hnist_war_exploded/user/login" class="nav-link">后台</a>
         </li>
        </c:if>
        <li class="nav-item">
         <a href="http://localhost:8080/com_hnist_war_exploded/logout" class="nav-link">退出登录</a>
        </li>
       </ul>
       </c:if>
      </li>
      <c:if test="${role!='HR'}">
       <li class="nav-item">
        <a href="#" class="nav-link dropdown-toggle">公司</a>
        <ul class="dropdown-menu">

         <li class="nav-item">
          <a href="http://localhost:8080/com_hnist_war_exploded/Topostcompany" class="nav-link">公司入驻</a>
         </li>
        </ul>
       </li>
      </c:if>

     </ul>
     <c:if test="${message==null}">
      <div class="other-option">
       <a href="http://localhost:8080/com_hnist_war_exploded/toregister" class="signup-btn">注册&nbsp;</a>
       <a href="http://localhost:8080/com_hnist_war_exploded/tocommonlogin" class="signin-btn">登录</a>
      </div>
     </c:if>
     <c:if test="${message==1}">
      <div class="other-option">
       <a>WelCome:  ${username}</a>
      </div>
     </c:if>
    </div>
   </nav>
  </div>
 </div>
</div>



<section class="page-title title-bg24">
<div class="d-table">
<div class="d-table-cell">
<h2>博客</h2>
<ul>
<li>
<a href="default.jsp">主页</a>
</li>
<li>博客</li>
</ul>
</div>
</div>
<div class="lines">
<div class="line"></div>
<div class="line"></div>
<div class="line"></div>
</div>
</section>


<section class="blog-section blog-style-two pt-100 pb-70">
<div class="container">
<div class="section-title text-center">
<h2>新闻, 建议 & 文章</h2>
<p>这里有很多关于求职以及工作当中的文章，可能会对你有所帮助</p>
</div>
<div class="row">
<div class="col-lg-8">
<div class="row">
<c:forEach items="${list}" var="article">
<div class="col-md-6 col-sm-6">
<div class="blog-card">
<div class="blog-img">
<a href="http://localhost:8080/com_hnist_war_exploded/blog-details?id=${article.getId()}">
<img src="newStatic/picture/11.jpg" alt="blog image">
</a>
</div>
<div class="blog-text">
<ul>
<li>
<i class='bx bxs-user'></i>
${article.getAuthor()}
</li>
<li>
<i class='bx bx-calendar'></i>
${article.getPost_time()}
</li>
</ul>
<h3>
<a href="http://localhost:8080/com_hnist_war_exploded/blog-details?id=${article.getId()}">
  ${article.getTitle()}
</a>
</h3>
<p> ${article.getBrief_introduction()}</p>
<a href="http://localhost:8080/com_hnist_war_exploded/blog-details?id=${article.getId()}" class="blog-btn">
查看
<i class='bx bx-plus bx-spin'></i>
</a>
</div>
</div>
</div>
</c:forEach>
</div>
<%--<div class="col-md-6 col-sm-6">--%>
<%--<div class="blog-card">--%>
<%--<div class="blog-img">--%>
<%--<a href="blog-details.jsp">--%>
<%--<img src="newStatic/picture/21.jpg" alt="blog image">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="blog-text">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<i class='bx bxs-user'></i>--%>
<%--Admin--%>
<%--</li>--%>
<%--<li>--%>
<%--<i class='bx bx-calendar'></i>--%>
<%--7 Feb, 2022--%>
<%--</li>--%>
<%--</ul>--%>
<%--<h3>--%>
<%--<a href="blog-details.jsp">--%>
<%--Looking for Highly Motivated Product to Build--%>
<%--</a>--%>
<%--</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--<a href="blog-details.jsp" class="blog-btn">--%>
<%--Read More--%>
<%--<i class='bx bx-plus bx-spin'></i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-6 col-sm-6">--%>
<%--<div class="blog-card">--%>
<%--<div class="blog-img">--%>
<%--<a href="blog-details.jsp">--%>
<%--<img src="newStatic/static/picture/31.jpg" alt="blog image">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="blog-text">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<i class='bx bxs-user'></i>--%>
<%--Admin--%>
<%--</li>--%>
<%--<li>--%>
<%--<i class='bx bx-calendar'></i>--%>
<%--7 Feb, 2022--%>
<%--</li>--%>
<%--</ul>--%>
<%--<h3>--%>
<%--<a href="blog-details.jsp">--%>
<%--The Reason Why Software Develope is the Best Job--%>
<%--</a>--%>
<%--</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--<a href="blog-details.jsp" class="blog-btn">--%>
<%--Read More--%>
<%--<i class='bx bx-plus bx-spin'></i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-6 col-sm-6">--%>
<%--<div class="blog-card">--%>
<%--<div class="blog-img">--%>
<%--<a href="blog-details.jsp">--%>
<%--<img src="newStatic/picture/42.jpg" alt="blog image">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="blog-text">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<i class='bx bxs-user'></i>--%>
<%--Admin--%>
<%--</li>--%>
<%--<li>--%>
<%--<i class='bx bx-calendar'></i>--%>
<%--7 Feb, 2022--%>
<%--</li>--%>
<%--</ul>--%>
<%--<h3>--%>
<%--<a href="blog-details.jsp">--%>
<%-- Economy Growth is Being Increased by IT Sectors--%>
<%--</a>--%>
<%--</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--<a href="blog-details.jsp" class="blog-btn">--%>
<%--Read More--%>
<%--<i class='bx bx-plus bx-spin'></i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-6 col-sm-6">--%>
<%--<div class="blog-card">--%>
<%--<div class="blog-img">--%>
<%--<a href="blog-details.jsp">--%>
<%--<img src="newStatic/picture/52.jpg" alt="blog image">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="blog-text">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<i class='bx bxs-user'></i>--%>
<%--Admin--%>
<%--</li>--%>
<%--<li>--%>
<%--<i class='bx bx-calendar'></i>--%>
<%--7 Feb, 2022--%>
<%--</li>--%>
<%--</ul>--%>
<%--<h3>--%>
<%--<a href="blog-details.jsp">--%>
<%--Tips for Making Your Resume Stand Out--%>
<%--</a>--%>
<%--</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--<a href="blog-details.jsp" class="blog-btn">--%>
<%--Read More--%>
<%--<i class='bx bx-plus bx-spin'></i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-6 col-sm-6">--%>
<%--<div class="blog-card">--%>
<%--<div class="blog-img">--%>
<%--<a href="blog-details.jsp">--%>
<%--<img src="newStatic/picture/62.jpg" alt="blog image">--%>
<%--</a>--%>
<%--</div>--%>
<%--<div class="blog-text">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<i class='bx bxs-user'></i>--%>
<%--Admin--%>
<%--</li>--%>
<%--<li>--%>
<%--<i class='bx bx-calendar'></i>--%>
<%--7 Feb, 2022--%>
<%--</li>--%>
<%--</ul>--%>
<%--<h3>--%>
<%--<a href="blog-details.jsp">--%>
<%--10 Things You Should Know Before Apply--%>
<%--</a>--%>
<%--</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--<a href="blog-details.jsp" class="blog-btn">--%>
<%--Read More--%>
<%--<i class='bx bx-plus bx-spin'></i>--%>
<%--</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

 <nav aria-label="Page navigation example">
<ul class="pagination justify-content-center">
<li class="page-item disabled">
<a class="page-link" href="#" tabindex="-1" aria-disabled="true">
<i class='bx bx-chevrons-left bx-fade-left'></i>
</a>
</li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=1">首页</a></li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${page-1}">上页</a></li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${page-1}">${page-1}</a></li>
 <li class="page-item active"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${page}">${page}</a></li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${page+1}">${page+1}</a></li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${page+1}">下页</a></li>
 <li class="page-item"><a class="page-link" href="http://localhost:8080/com_hnist_war_exploded/blog?page=${maxPage}">尾页</a></li>
<li class="page-item">
<a class="page-link" href="#">
<i class='bx bx-chevrons-right bx-fade-right'></i>
</a>
</li>
</ul>
</nav>
</div>
<div class="col-lg-4">
<%--<div class="blog-widget blog-search">--%>
<%--<form>--%>
<%--<div class="form-group">--%>
<%--<input type="text" class="form-control" placeholder="Search">--%>
<%--<button>--%>
<%--<i class='bx bx-search-alt-2'></i>--%>
<%--</button>--%>
<%--</div>--%>
<%--</form>--%>
<%--</div>--%>
<%--<div class="blog-widget">--%>
<%--<h3>Popular Post</h3>--%>
<%--<article class="popular-post">--%>
<%--<a href="blog-details.jsp" class="blog-thumb">--%>
<%--<img src="newStatic/picture/popular-post1.jpg" alt="blog image">--%>
<%--</a>--%>
<%--<div class="info">--%>
<%--<time datetime="2022-04-08">May 8, 2022</time>--%>
<%--<h4>--%>
<%--<a href="blog-details.jsp">Looking for Highly Motivated Product to Build</a>--%>
<%--</h4>--%>
<%--</div>--%>
<%--</article>--%>
<%--<article class="popular-post">--%>
<%--<a href="blog-details.jsp" class="blog-thumb">--%>
<%--<img src="newStatic/picture/popular-post2.jpg" alt="blog image">--%>
<%--</a>--%>
<%--<div class="info">--%>
<%--<time datetime="2022-04-08">May 5, 2022</time>--%>
<%--<h4>--%>
<%--<a href="blog-details.jsp">--%>
<%--How to Indroduce in Yourself in Job Interview?--%>
<%--</a>--%>
<%--</h4>--%>
<%--</div>--%>
<%--</article>--%>
<%--<article class="popular-post">--%>
<%--<a href="blog-details.jsp" class="blog-thumb">--%>
<%--<img src="newStatic/static/picture/popular-post3.jpg" alt="blog image">--%>
<%--</a>--%>
<%--<div class="info">--%>
<%--<time datetime="2022-04-08">April 20, 2022</time>--%>
<%--<h4>--%>
<%--<a href="blog-details.jsp">--%>
<%--Economy Growth is Being Increased by IT Sectors--%>
<%--</a>--%>
<%--</h4>--%>
<%--</div>--%>
<%--</article>--%>
<%--<article class="popular-post">--%>
<%--<a href="blog-details.jsp" class="blog-thumb">--%>
<%--<img src="newStatic/picture/popular-post4.jpg" alt="blog image">--%>
<%--</a>--%>
<%--<div class="info">--%>
<%--<time datetime="2022-04-08">April 28, 2022</time>--%>
<%--<h4>--%>
<%--<a href="blog-details.jsp">--%>
<%--10 Things You Should Know Before Apply--%>
<%--</a>--%>
<%--</h4>--%>
<%--</div>--%>
<%--</article>--%>
<%--</div>--%>


<%--<div class="blog-widget blog-category">--%>
<%--<h3>Category</h3>--%>
<%--<ul>--%>
<%--<li>--%>
<%--<a href="#">Web Design</a>--%>
<%--<span>(10)</span>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Job Tips</a>--%>
<%--<span>(5)</span>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">UX Design</a>--%>
<%--<span>(8)</span>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Tips & Tricks</a>--%>
<%--<span>(4)</span>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Writting</a>--%>
<%--<span>(12)</span>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Business</a>--%>
<%--<span>(7)</span>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="blog-widget blog-tags">--%>
<%--<h3>Tags</h3>--%>
<%--<ul>--%>
<%--<li>--%>
<%--<a href="#">Web Design</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Job Tips</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">UX Design</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Tips & Tricks</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Writting</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Business</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">Resume</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
</div>
</div>
</div>
</div>
</section>


<%--<section class="subscribe-section">--%>
<%--<div class="container">--%>
<%--<div class="row align-items-center">--%>
<%--<div class="col-md-6">--%>
<%--<div class="section-title">--%>
<%--<h2>Get New Job Notifications</h2>--%>
<%--<p>Subscribe & get all related jobs notification</p>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-6">--%>
<%--<form class="newsletter-form" data-toggle="validator">--%>
<%--<input type="email" class="form-control" placeholder="Enter your email" name="EMAIL" required="" autocomplete="off">--%>
<%--<button class="default-btn sub-btn" type="submit">--%>
<%--Subscribe--%>
<%--</button>--%>
<%--<div id="validator-newsletter" class="form-result"></div>--%>
<%--</form>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>


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
       <a href="post-company.jsp">
        <i class='bx bx-chevrons-right bx-tada'></i>
        账户
       </a>
      </li>
      <li>
       <a href="job-list.html">
        <i class='bx bx-chevrons-right bx-tada'></i>
        工作列表 </a>
      </li>
      <li>
       <a href="sign-up.html">
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
       <a href="pricing.html">
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