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
 <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
 <link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
 <link rel="stylesheet" type="text/css" href="css/style.css" />
 <script src="javascript/jquery.js"></script>
 <script src="javascript/plug-ins/customScrollbar.min.js"></script>
 <script src="javascript/plug-ins/echarts.min.js"></script>
 <script src="javascript/plug-ins/layerUi/layer.js"></script>
 <script src="editor/ueditor.config.js"></script>
 <script src="editor/ueditor.all.js"></script>
 <script src="javascript/plug-ins/pagination.js"></script>
 <script src="javascript/public.js"></script>
 <title>Jovie - Job Board & Portal HTML Template</title>
 <style>
  .span{
   color:red;
   font-weight:bold;
  }
 </style>
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



<section class="page-title title-bg3">
 <div class="d-table">
  <div class="d-table-cell">
   <h2>发布工作</h2>
   <ul>
    <li>
     <a href="default.jsp">主页</a>
    </li>
    <li>发布工作</li>
   </ul>
  </div>
 </div>
 <div class="lines">
  <div class="line"></div>
  <div class="line"></div>
  <div class="line"></div>
 </div>
</section>


<div class="job-post ptb-100">
 <div class="container">
  <%--@elvariable id="WorkList" type="modle"--%>
  <form:form class="job-post-from" action="http://localhost:8080/com_hnist_war_exploded/work/AddWork" method="post" modelAttribute="WorkList">
   <h2>发布您公司招聘的岗位详情</h2>
   <div class="row">
    <div class="col-md-6">
     <div class="form-group">
      <label>工作名称</label>
      <input type="text" class="form-control" id="WorkName" placeholder="岗位名称" required="" name="WorkName">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>发布者</label>
      <input type="text" class="form-control" id="post_people" placeholder="${email}" value="${email}" required="" name="post_people" readonly="true">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>工作类型</label>
    <select class="category" name="WorkType" id="WorkType" >
       <option value="互联网">互联网</option>
       <option value="房地产">房地产</option>
       <option value="设计">设计</option>
       <option value="教育">教育</option>
       <option value="金融">金融</option>
       <option value="汽车">汽车</option>
      </select>
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>公司名称</label>
      <input type="text" class="form-control" id="PostCompany" placeholder="${company}" value="${company}" required="" name="PostCompany" readonly="true">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>岗位数量</label>
      <input type="text" class="form-control" id="WorkNumber" placeholder="招聘人数" name="WorkNumber">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>地址</label>
      <input type="text" class="form-control" id="Location" placeholder="e.g. London" required="" name="Location">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>工作时间</label>
      <select class="category" name="WorkTime" id="WorkTime">
       <option data-display="Job Type">工作时间</option>
       <option value="8小时">8小时</option>
       <option value="自由控制">自由控制</option>
       <option value="出差">出差</option>
      </select>
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>薪水</label>
      <input type="number" class="form-control" id="Salary" placeholder="e.g. $20,000" name="Salary">
     </div>
    </div>
    <div class="col-md-6">
     <div class="form-group">
      <label>工作经验</label>
      <input type="text" class="form-control" id="Experince" placeholder="e.g. 1 year" required="" name="Experince">
     </div>
    </div>
    <div class="col-md-12">
     <div class="form-group">
      <label >描述</label>
       <%--      <textarea class="form-control description-area" id="WorkDetail" rows="6" placeholder="Job Description" required="" name="WorkDetail"></textarea>--%>
      <div class="panel panel-default">
       <div class="panel-hd">百度ueditor文本编辑器</div>
       <div class="panel-bd">
        <script id="container1" name="WorkRequest" type="text/plain"></script>
        <script type="text/javascript"> var ue = UE.getEditor('container1'); </script>
       </div>
      </div>
      <!--开始::结束-->
     </div>
    </div>
    <div class="col-md-12">
     <div class="form-group">
      <label >具体工作要求</label>
<%--      <textarea class="form-control description-area" id="WorkDetail" rows="6" placeholder="Job Description" required="" name="WorkDetail"></textarea>--%>
      <div class="panel panel-default">
       <div class="panel-hd">百度ueditor文本编辑器</div>
       <div class="panel-bd">
        <script id="container" name="WorkDetail" type="text/plain"></script>
        <script type="text/javascript"> var ue = UE.getEditor('container'); </script>
       </div>
      </div>
      <!--开始::结束-->
     </div>
     </div>
    </div>
    <div class="col-md-12 text-center">
     <button type="submit" class="post-btn">
      发布工作</button>
    </div>
   </div>
  </form:form>
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
<script>
 if(${postJob==null})
 {

 }
 else if(${postJob==1})
 {
  alert("发布成功");
 }
</script>
</html>