<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
								<li class="nav-item">
									<a href="http://localhost:8080/com_hnist_war_exploded/work/ToAddWork" class="nav-link">发布工作</a>
								</li>
								<li class="nav-item">
									<a href="http://localhost:8080/com_hnist_war_exploded/work/GetAllWork" class="nav-link">工作列表</a>
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
								<li class="nav-item">
									<a href="http://localhost:8080/com_hnist_war_exploded/user/login" class="nav-link">后台</a>
								</li>
							</ul>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link dropdown-toggle">公司</a>
							<ul class="dropdown-menu">
								<li class="nav-item">
									<a href="http://localhost:8080/com_hnist_war_exploded/Topostcompany" class="nav-link">公司入驻</a>
								</li>
							</ul>
						</li>
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


<section class="page-title title-bg2">
	<div class="d-table">
		<div class="d-table-cell">
			<h2>Find a Job</h2>
			<ul>
				<li>
					<a href="index.html">主页&nbsp;</a>
				</li>
				<li>Find a Job</li>
			</ul>
		</div>
	</div>
	<div class="lines">
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
	</div>
</section>


<div class="find-section ptb-100">
	<div class="container">
	<%--@elvariable id="WorkList" type="modle"--%>
	<form:form  class="find-form mt-0" action="http://localhost:8080/com_hnist_war_exploded/work/SelectWork" modelAttribute="WorkList" method="post">
			<div class="row">
				<div class="col-lg-3">
					<div class="form-group">
						<input type="text" class="form-control" id="WorkName" name="WorkName" placeholder="岗位名称">
						<i class="bx bx-search-alt"></i>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="form-group">
						<input type="text" class="form-control" id="Location" name="Location" placeholder="位置">
						<i class="bx bx-location-plus"></i>
					</div>
				</div>
				<div class="col-lg-3">
					<select class="category" name="WorkType" id="WorkType">
						<option data-display="岗位类型" >岗位类型</option>
						<option value="互联网">互联网</option>
						<option value="金融">金融</option>
						<option value="房地产">房地产</option>
						<option value="教育">教育</option>
						<option value="设计">设计</option>
					</select>
				</div>
				<div class="col-lg-3">
					<button type="submit" class="find-btn">
						Find A Job
						<i class='bx bx-search'></i>
					</button>
				</div>
			</div>
	</form:form>
	</div>
</div>


<div class="category-style-two pb-70">
	<div class="container">
		<div class="section-title">
			<h2 align="center">热门职位类别</h2>
			<p>要使整个人生都过得舒适、愉快，这是永远都不可能的，因为人类必须具备一种能应付逆境的态度。</p>
		</div>
		<div class="row">
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-wrench-and-screwdriver-in-cross"></i>
						<h3>建设</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-accounting"></i>
						<h3>金融</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-heart"></i>
						<h3>医疗</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-computer-1"></i>
						<h3>设计&nbsp;</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-research"></i>
						<h3>银行</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-worker"></i>
						<h3>汽车</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3 col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-graduation-cap"></i>
						<h3>教育</h3>
						<br/>
					</div>
				</a>
			</div>
			<div class="col-lg-3  col-sm-6">
				<a href="job-list.html">
					<div class="category-item">
						<i class="flaticon-computer"></i>
						<h3>数据分析</h3>
						<br/>
					</div>
				</a>
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