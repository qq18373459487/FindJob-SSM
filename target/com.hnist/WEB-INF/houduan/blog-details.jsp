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



<section class="page-title title-bg22">
<div class="d-table">
<div class="d-table-cell">
<h2>文章详情</h2>
<ul>
<li>
<a href="default.jsp">主页</a>
</li>
<li>文章详情</li>
</ul>
</div>
</div>
<div class="lines">
<div class="line"></div>
<div class="line"></div>
<div class="line"></div>
</div>
</section>


<section class="blog-details-area ptb-100">
<div class="container">
<div class="row">
<div class="col-lg-4">
<div class="blog-widget blog-search">
<form>
<div class="form-group">
<input type="text" class="form-control" placeholder="Search">
<button>
<i class='bx bx-search-alt-2'></i>
</button>
</div>
</form>
</div>
<div class="blog-widget">
<h3>Popular Post</h3>
<article class="popular-post">
<a href="" class="blog-thumb">
<img src="newStatic/picture/popular-post1.jpg" alt="blog image">
</a>
<div class="info">
<time datetime="2022-04-08">May 8, 2022</time>
<h4>
<a href="">Looking for Highly Motivated Product to Build</a>
</h4>
</div>
</article>
<article class="popular-post">
<a href="" class="blog-thumb">
<img src="newStatic/picture/popular-post2.jpg" alt="blog image">
</a>
<div class="info">
<time datetime="2022-04-08">${article.getPost_time()}</time>
<h4>
<a href="">
 ${article.getTitle()}
</a>
</h4>
</div>
</article>
<article class="popular-post">
<a href="" class="blog-thumb">
<img src="newStatic/picture/popular-post3.jpg" alt="blog image">
</a>
<div class="info">
<time datetime="2022-04-08">April 20, 2022</time>
<h4>
<a href="">
Economy Growth is Being Increased by IT Sectors
</a>
</h4>
</div>
</article>
<article class="popular-post">
<a href="" class="blog-thumb">
<img src="newStatic/picture/popular-post4.jpg" alt="blog image">
</a>
<div class="info">
<time datetime="2022-04-08">April 28, 2022</time>
<h4>
<a href="">
10 Things You Should Know Before Apply
</a>
</h4>
</div>
</article>
</div>
<div class="blog-widget blog-category">
<h3>Category</h3>
<ul>
<li>
<a href="#">Web Design</a>
<span>(10)</span>
</li>
<li>
<a href="#">Job Tips</a>
<span>(5)</span>
</li>
<li>
<a href="#">UX Design</a>
<span>(8)</span>
</li>
<li>
<a href="#">Tips & Tricks</a>
<span>(4)</span>
</li>
<li>
<a href="#">Writting</a>
<span>(12)</span>
</li>
<li>
<a href="#">Business</a>
<span>(7)</span>
</li>
</ul>
</div>
<div class="blog-widget blog-tags">
<h3>Tags</h3>
<ul>
<li>
<a href="#">Web Design</a>
</li>
<li>
<a href="#">Job Tips</a>
</li>
<li>
<a href="#">UX Design</a>
</li>
<li>
<a href="#">Tips & Tricks</a>
</li>
<li>
<a href="#">Writting</a>
</li>
<li>
<a href="#">Business</a>
</li>
<li>
<a href="#">Resume</a>
</li>
</ul>
</div>
</div>
<div class="col-lg-8">
<div class="blog-dedails-text">
<div class="blog-details-img">
<img src="newStatic/picture/blog-details.jpg" alt="blog details image">
</div>
<div class="blog-meta">
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
</div>
<h3 class="post-title">Tips for Making Your Resume Stand Out</h3>
 <p>  ${article.getAuthor_text()}</p>
<div class="details-tag">
<ul>
<li>Tags:</li>
<li>
<a href="#">Business</a>
</li>
<li>
<a href="#">Resume</a>
</li>
<li>
<a href="#">Develpment</a>
</li>
</ul>
</div>
<form class="comment-form">
<h3>Leave a Reply</h3>
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label>Name</label>
<input type="text" class="form-control" placeholder="Your Name">
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Email</label>
<input type="email" class="form-control" placeholder="Your Name">
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<label>Comment</label>
<textarea class="form-control comment-box" cols="30" rows="6" placeholder="Your Comment"></textarea>
</div>
</div>
</div>
<button type="submit" class="comment-btn">
Post a Comment
</button>
</form>
</div>
</div>
</div>
</div>
</section>


<section class="subscribe-section">
<div class="container">
<div class="row align-items-center">
<div class="col-md-6">
<div class="section-title">
<h2>Get New Job Notifications</h2>
<p>Subscribe & get all related jobs notification</p>
</div>
</div>
<div class="col-md-6">
<form class="newsletter-form" data-toggle="validator">
<input type="email" class="form-control" placeholder="Enter your email" name="EMAIL" required="" autocomplete="off">
<button class="default-btn sub-btn" type="submit">
Subscribe
</button>
<div id="validator-newsletter" class="form-result"></div>
</form>
</div>
</div>
</div>
</section>


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