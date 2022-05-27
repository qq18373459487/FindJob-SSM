<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8"/>
	<title>后台管理系统-HTML5后台管理系统</title>
	<meta name="keywords"  content="设置关键词..." />
	<meta name="description" content="设置描述..." />
	<meta name="author" content="DeathGhost" />
	<meta name="renderer" content="webkit">
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
</head>
<body>
<div class="main-wrap">
	<div class="side-nav">
		<div class="side-logo">
			<div class="logo">
				<span class="logo-ico">
					<i class="i-l-1"></i>
					<i class="i-l-2"></i>
					<i class="i-l-3"></i>
				</span>
				<strong>模块化后台管理模板</strong>
			</div>
		</div>

		<nav class="side-menu content mCustomScrollbar" data-mcs-theme="minimal-dark">
			<h2>
				<a href="http://localhost:8080/com_hnist_war_exploded/user/login-sucess" class="InitialPage"><i class="icon-dashboard"></i>主页</a>
			</h2>
			<ul>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>数据列表<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/company/GetAllCompany">公司列表</a>
						</dd>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/user">用户列表</a>
						</dd>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/work/workList">工作岗位列表</a>
						</dd>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/user/manageList">管理员列表</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>文件管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/user/file">文件下载</a>
						</dd>
						<dd>
							<a href="http://localhost:8080/com_hnist_war_exploded/user/excel">数据导入导出</a>
						</dd>
					</dl>
				</li>
			</ul>
		</nav>
		<footer class="side-footer">© DeathGhost 版权所有</footer>

	</div>
	<div class="content-wrap">
		<header class="top-hd">
			<div class="hd-lt">
				<a class="icon-reorder"></a>
			</div>
			<div class="hd-rt">
				<ul>
					<li>
						<a href="http://localhost:8080/com_hnist_war_exploded/default" target="_blank"><i class="icon-home"></i>前台访问</a>
					</li>
					<li>
						<a><i class="icon-random"></i>清除缓存</a>
					</li>
					<li>
						<a><i class="icon-user"></i>管理员:<em></em></a>
					</li>
					<li>
						<a><i class="icon-bell-alt"></i>系统消息</a>
					</li>
					<li>
						<a href="http://localhost:8080/com_hnist_war_exploded/user/login" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
					</li>
				</ul>
			</div>
		</header>
		<main class="main-cont content mCustomScrollbar">
			<!--开始::内容-->
			<div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title"><i class="icon-home"></i>Find A JOB后台管理模板</h2>
						<p class="title-description">
							Jover后台管理系统,
							<!-- <em class="text-primary">HTML5</em>+<em class="text-primary">CSS3</em>经典组合;
							该模板由<a class="text-primary" title="DeathGhost.cn">DeathGhost</a>个人提供,仅供参考。 -->
						</p>
					</header>
					<hr>
				</section>
				<blockquote class="blockquote mb-20">
					<p class="text-success">管理员注意事项</p>
					<p class="text-success">不得将账号密码泄漏给无关人员</p>
					<p class="text-success">不得随意导入导出数据</p>
					<p>请使用高版本的浏览器，如果未使用高版本的浏览器，可能会出现一些问题！！！</p>
				</blockquote>
				<div class="panel panel-default">
					<div class="panel-bd capitalize">
						浏览器兼容：google chrome、microsoft edge、360浏览器、火狐浏览器、uc浏览器等高版本浏览器。
					</div>
				</div>
			</div>


		</main>
		<footer class="btm-ft">
			<p class="clear">
				<span class="fl">©Copyright 2016 <a href="#" title="DeathGhost" target="_blank">DeathGhost.cn</a></span>
				<span class="fr text-info">
					<em class="uppercase">
						<i class="icon-user"></i>
						author:deathghost
					</em> |
					<em class="uppercase"><i class="icon-envelope-alt"></i>
						更多模板： <a href="http://www.mycodes.net/" target="_blank">源码之家</a>
					</em>
					<a onclick="reciprocate()" class="text-primary"><i class="icon-qrcode"></i>捐赠</a>
				</span>
			</p>
		</footer>
	</div>
</div>
</body>
</html>
