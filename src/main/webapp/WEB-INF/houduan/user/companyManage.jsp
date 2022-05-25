<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
				<a href="index.jsp" class="InitialPage"><i class="icon-dashboard"></i>主页</a>
			</h2>
			<ul>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>数据列表<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="companyManage.jsp">公司列表</a>
						</dd>
						<dd>
							<a href="companyManage.jsp">用户列表</a>
						</dd>
						<dd>
							<a href="companyManage.jsp">工作岗位列表</a>
						</dd>
						<dd>
							<a href="companyManage.jsp">个人列表</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>文章管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="companyManage.jsp">文章发布</a>
						</dd>
						<dd>
							<a href="companyManage.jsp">文章审核</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>文件管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="companyManage.jsp">文件下载</a>
						</dd>
						<dd>
							<a href="companyManage.jsp">数据导入导出</a>
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
						<a href="#" target="_blank"><i class="icon-home"></i>前台访问</a>
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
						<a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
					</li>
				</ul>
			</div>
		</header>
		<main class="main-cont content mCustomScrollbar">
			<div class="page-wrap">
				<button class="btn btn-secondary JopenMaskPanel_addStudent mr-10" style="margin-bottom: 20px; margin-left: 20px;">添加</button>
				<table class="table table-bordered table-striped table-hover">
					<thead>
					<tr>
						<th>id</th>
						<th>公司名称</th>
						<th>招聘总人数</th>
						<th>公司地址</th>
						<th>公司邮箱</th>
						<th>资质</th>
						<th>操作</th>
					</tr>
					</thead>
<c:forEach items="${list}" var="company">

					<tbody>
					<tr class="cen">
						<td>${company.getCompanyId()}</td>
						<td class="lt"><a href="#">${company.getCompanyName()}</a></td>
						<td>${company.getCompanyData()}</td>
						<td>${company.getCompanyAddress()}</td>
						<td>${company.getCompanyEmail()}</td>
						<td>${company.getCompanyQualification()}</td>
						<td>
							<a title="编辑" class="mr-5">编辑</a>
							<a title="删除">删除</a>
							<a title="批准">删除</a>
							<a title="反对">删除</a>
						</td>
					</tr>
					</tbody>
</c:forEach>
				</table>
				<!--开始::结束-->
			</div>
			<div class="panel panel-default">
				<div class="panel-bd">
					<div class="pagination"></div>
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
<script>
	$(".pagination").createPage({
		pageCount:${maxPage},
		current:${page},
		backFn:function(p){
			window.location.href="http://localhost:8080/com_hnist_war_exploded/company/GetAllCompany?page="+p;
		}
	});
</script>
</html>
