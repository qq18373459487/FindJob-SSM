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

<section class="page-title title-bg10">
 <div class="d-table">
  <div class="d-table-cell">
   <h2>账号</h2>
   <ul>
    <li>
     <a href="index.html">Home</a>
    </li>
    <li>Account</li>
   </ul>
  </div>
 </div>
 <div class="lines">
  <div class="line"></div>
  <div class="line"></div>
  <div class="line"></div>
 </div>
</section>


<section class="account-section ptb-100">
 <div class="container">
  <div class="row">
   <div class="col-md-4">
    <div class="account-information">
     <div class="profile-thumb">
      <img src="newStatic/picture/account.jpg" alt="account holder image">
      <h3>John Smith</h3>
      <p>Web Developer</p>
     </div>
     <ul>
      <li>
       <a href="#" class="active">
        <i class='bx bx-user'></i>
        个人信息</a>
      </li>
      <!-- <li>
      <a href="resume.html">
      <i class='bx bxs-file-doc'></i>
      My Resume
      </a>
      </li>
      <li>
      <a href="#">
      <i class='bx bx-briefcase'></i>
      Applied Job
      </a>
      </li>
      <li>
      <a href="#">
      <i class='bx bx-envelope'></i>
      Messages
      </a>
      </li>
      <li>
      <a href="#">
      <i class='bx bx-heart'></i>
      Saved Jobs
      </a>
      </li>
      <li>
      <a href="#">
      <i class='bx bx-lock-alt'></i>
      Change Password
      </a>
      </li>
      <li>
      <a href="#">
      <i class='bx bx-coffee-togo'></i>
      Delete Account
      </a>
      </li> -->
      <li>
       <a href="http://localhost:8080/com_hnist_war_exploded/logout">
        <i class='bx bx-log-out'></i>
        退出</a>
      </li>
     </ul>
    </div>
   </div>
   <div class="col-md-8">
    <div class="account-details">
     <h3>基础信息</h3>
     <%--@elvariable id="PersonMG" type="modle.PersonMg"--%>
     <form:form class="basic-info" action="http://localhost:8080/com_hnist_war_exploded/SaveAccount" modelAttribute="PersonMG">
      <div class="row">
       <div class="col-md-6">
        <div class="form-group">
         <label>名字</label>
         <input type="text" class="form-control" placeholder="${person.getUsername()}" value="${person.getUsername()}"  name="username">
        </div>
       </div>
       <div class="col-md-6">
        <div class="form-group">
         <label>邮件</label>
         <input type="email" class="form-control" placeholder="${email}"  value="${email}" id="email" name="email">
        </div>
       </div>
       <div class="col-md-6">
        <div class="form-group">
         <label>年龄</label>
         <input type="number" class="form-control" placeholder="${person.getAge()}"  value="${person.getAge()}" name="age">
        </div>
       </div>
       <div class="col-md-6">
        <div class="form-group">
         <label>工作经验</label>
         <input type="text" class="form-control" placeholder="${person.getExperience()}" value="${person.getExperience()}" name="experience">
        </div>
       </div>
       <div class="col-md-12">
<%--        <button type="submit" class="account-btn">Edit</button>--%>
<%--        <button type="submit" class="account-btn">Save</button>--%>
       </div>
      </div>
     <h3>地址信息</h3>
     <div class="-candidate-address">
      <div class="row">
       <div class="col-md-6">
        <div class="form-group">
         <label>国籍</label>
         <input type="number" class="form-control" placeholder="中国" disabled="disabled">
        </div>
       </div>
       <div class="col-md-6">
        <div class="form-group">
         <label>城市</label>
         <input type="text" class="form-control" placeholder="${person.getCity()}" value="${person.getCity()}" name="city">
        </div>
       </div>
       <div class="col-md-6">
        <div class="form-group">
         <label>身份</label>
         <input type="number" class="form-control" placeholder="${person.getIdentity()}"  name="identity" disabled="disabled" >
        </div>
       </div>
<%--       <div class="col-md-6">--%>
<%--        <div class="form-group">--%>
<%--         <label>工作技能</label>--%>
<%--         <input type="text" class="form-control" placeholder="${person.getWorkTile()}" name="workTile">--%>
<%--        </div>--%>
<%--       </div>--%>
       <div class="col-md-12">
        <button type="reset" class="account-btn">重置</button>
        <button type="submit" class="account-btn">保存</button>
       </div>
      </div>
     </div>
     <!-- <h3>Other information</h3>
     <form class="cadidate-others">
     <div class="row">
     <div class="col-md-6">
     <div class="form-group">
     <label>Age</label>
     <input type="number" class="form-control" placeholder="Your Age">
     </div>
     </div>
     <div class="col-md-6">
     <div class="form-group">
     <label>Work Experience</label>
     <input type="number" class="form-control" placeholder="Work Experience">
     </div>
     </div>
     <div class="col-md-6">
     <div class="form-group">
     <label>Language</label>
     <input type="text" class="form-control" placeholder="Language">
     </div>
     </div>
     <div class="col-md-6">
     <div class="form-group">
     <label>Skill</label>
     <input type="text" class="form-control" placeholder="Skills">
     </div>
     </div>
     <div class="col-md-12">
     <button type="submit" class="account-btn">Edit</button>
     <button type="submit" class="account-btn">Save</button>
     </div>
     </div>
     </form> -->
     <!-- <h3>Social links</h3>
     <form class="candidates-sociak">
     <div class="row">
     <div class="col-lg-6">
     <div class="form-group">
     <label>Facebook</label>
     <input type="text" class="form-control" placeholder="www.facebook.com/user">
     </div>
     </div>
     <div class="col-lg-6">
     <div class="form-group">
     <label>Twitter</label>
     <input type="number" class="form-control" placeholder="www.twitter.com/user">
     </div>
     </div>
     <div class="col-lg-6">
     <div class="form-group">
     <label>Linkedin</label>
     <input type="text" class="form-control" placeholder="www.Linkedin.com/user">
     </div>
     </div>
     <div class="col-lg-6">
     <div class="form-group">
     <label>Github</label>
     <input type="text" class="form-control" placeholder="www.Github.com/user">
     </div>
     </div>
     <div class="col-md-12">
     <button type="submit" class="account-btn">Edit</button>
     <button type="submit" class="account-btn">Save</button>
      </div>
     </div>
     </form> -->
     </form:form>
    </div>
   </div>
  </div>
 </div>
</section>


<!-- <section class="subscribe-section">
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
</section> -->



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