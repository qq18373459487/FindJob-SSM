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


<section class="page-title title-bg6">
 <div class="d-table">
  <div class="d-table-cell">
   <h2>工作详情</h2>
   <ul>
    <li>
     <a href="index.html">主页</a>
    </li>
    <li>工作详情</li>
   </ul>
  </div>
 </div>
 <div class="lines">
  <div class="line"></div>
  <div class="line"></div>
  <div class="line"></div>
 </div>
</section>


<section class="job-details ptb-100">
 <div class="container">
  <div class="row">
   <div class="col-lg-8">
    <div class="row">
     <div class="col-lg-12">
      <div class="job-details-text">
       <div class="job-card">
        <div class="row align-items-center">
         <div class="col-md-2">
          <!-- <div class="company-logo">
          <img src="newStatic/picture/1.png" alt="logo">
          </div> -->
         </div>
         <!-- <div class="col-md-10">
         <div class="job-info">
         <h3></h3>
         <ul>
         <li>
         <i class='bx bx-location-plus'></i>
         Wellesley Rd, London
         </li>
         <li>
         <i class='bx bx-filter-alt'></i>
         Accountancy
         </li>
         <li>
         <i class='bx bx-briefcase'></i>
         Freelance
         </li>
         </ul>
         <span>
         <i class='bx bx-paper-plane'></i>
         Apply Before: June 01,2022
         </span>
         </div>
         </div> -->
        </div>
       </div>
       <div class="details-text">
        <h3>描述</h3>
        <p>${result.getWorkDetail()}</p>
       </div>
       <div class="details-text">
        <h3>工作要求</h3>
        <p> 如果你想要应聘这份工作你至少要达到以下的几点要求</p>
        <p>${result.getWorkRequest()}</p>
       </div>
       <div class="details-text">
        <h3>工作详情</h3>
        <div class="row">
         <div class="col-md-6">
          <table class="table">
           <tbody>
           <tr>
            <td><span>公司:</span></td>
            <td>${result.getPostCompany()}</td>
           </tr>
           <tr>
            <td><span>地址:</span></td>
            <td>${result.getLocation()}</td>
           </tr>
           <tr>
            <td><span>工作时间类型:</span></td>
            <td>${result.getWorkTime()}</td>
           </tr>
           <tr>
            <td><span>工作类型:</span></td>
<%--            <td><a href="email-protection.html#2a424f4646456a4945475a4b445304494547"><span class="__cf_email__" data-cfemail="751d1019191a35161a1805141b0c5b161a18">[email&#160;protected]</span></a></td>--%>
            <td>${result.getWorkType()}</td>
           </tr>
           </tbody>
          </table>
         </div>
         <div class="col-md-6">
          <table class="table">
           <tbody>
           <tr>
            <td><span>工作经历:</span></td>
            <td>${result.getExperince()}</td>
           </tr>
           <tr>
            <td><span>工作名称:</span></td>
            <td>${result.getWorkName()}</td>
           </tr>
           <tr>
            <td><span>薪水:</span></td>
            <td>${result.getSalary()}</td>
           </tr>
           <tr>
            <td><span>招聘人数:</span></td>
            <td><a href="#">${result.getWorkNumber()}</a></td>
           </tr>
           </tbody>
          </table>
         </div>
        </div>
       </div>
       <div class="theme-btn">
        <a href="http://localhost:8080/com_hnist_war_exploded/work/GotoCv?id=${result.getId()}" class="default-btn">
         立即申请
        </a>
       </div>
      </div>
     </div>
    </div>
   </div>
   <div class="col-lg-4">
    <div class="job-sidebar">
     <h3>发布者</h3>
     <div class="posted-by">
      <img src="newStatic/picture/client-1.png" alt="client image">
      <h4 id="postMan">${personMg.getUsername()}</h4>
      <span>身份:${personMg.getIdentity()}</span>
     </div>
    </div>
    <div class="job-sidebar">
     <h3>公司地址:${personMg.getCity()}</h3>
     <img src="newStatic/image/25.jpg"></img>
    </div>
    <div class="job-sidebar">
     <h3>Keywords</h3>
     <ul>
      <li>
       <a href="#">Web Design</a>
      </li>
      <li>
       <a href="#">Data Sceince</a>
      </li>
      <li>
       <a href="#">SEO</a>
      </li>
      <li>
       <a href="#">Content Writter</a>
      </li>
      <li>
       <a href="#">Finance</a>
      </li>
      <li>
       <a href="#">Business</a>
      </li>
      <li>
       <a href="#">Education</a>
      </li>
      <li>
       <a href="#">Graphics</a>
      </li>
      <li>
       <a href="#">Video</a>
      </li>
     </ul>
    </div>
    <div class="job-sidebar social-share">
     <h3>Share In</h3>
     <ul>
      <li>
       <a href="#" target="_blank">
        <i class="bx bxl-facebook"></i>
       </a>
      </li>
      <li>
       <a href="#" target="_blank">
        <i class="bx bxl-twitter"></i>
       </a>
      </li>
      <li>
       <a href="#" target="_blank">
        <i class="bx bxl-pinterest"></i>
       </a>
      </li>
      <li>
       <a href="#" target="_blank">
        <i class="bx bxl-linkedin"></i>
       </a>
      </li>
     </ul>
    </div>
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
        Pricing
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