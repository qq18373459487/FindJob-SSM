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
				<a href="index.jsp" class="InitialPage"><i class="icon-dashboard"></i>主页</a>
			</h2>
			<ul>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>数据列表<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="flex-layout.jsp">公司列表</a>
						</dd>
						<dd>
							<a href="flex-layout.jsp">用户列表</a>
						</dd>
						<dd>
							<a href="flex-layout.jsp">工作岗位列表</a>
						</dd>
						<dd>
							<a href="flex-layout.jsp">个人列表</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-inbox"></i>文章管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="flex-layout.jsp">文章发布</a>
						</dd>
						<dd>
							<a href="flex-layout.jsp">文章审核</a>
						</dd>
					</dl>
				</li>
				<!-- <li>
					<dl>
						<dt>
							<i class="icon-table"></i>表格UI<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="table.html">基础表格</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-list-alt"></i>表单UI<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="form.html">表单结构样式</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-external-link"></i>弹出窗口<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="popups.html">基础弹出层</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-bar-chart"></i>百度统计echarts图表<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="echarts.html">echarts统计图表</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-font"></i>文本编辑器<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="ueditor.html">百度UEDITOR编辑器</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-road"></i>进度条<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="progress.html">progress进度条兼容</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-tags"></i>Tab选项卡<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="tab.html">Tab选项卡</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-filter"></i>下拉菜单<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="button-dropdown.html">按钮式下拉菜单</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-sitemap"></i>页面分组标题<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="title.html">页面标题</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>分页<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="paging.html">jquery分页效果</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-spinner"></i>旋转动画<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="animation.html">刷新加载动画</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-fighter-jet"></i>面包屑导航<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="breadcrumb.html">面包屑</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-laptop"></i>文本面板<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="text-panel.html">文本面板</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-leaf"></i>块引用<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="blockquote.html">块引用</a>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<i class="icon-star"></i>第三方弹窗组件<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="layer.html">web弹层组件</a>
						</dd>
					</dl>
				</li>-->
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
				<!--开始::内容-->
				<!-- <section class="page-hd">
					<header>
						<h2 class="title">表格系列展示</h2>
						<p class="title-description">
							表格系列，四种表格样式，隔行换色，鼠标经过等
						</p>
					</header>
					<hr>
				</section> -->
				<!-- <table class="table mb-15">
					<thead>
						<tr>
							<th><input type="checkbox"/></th>
							<th>产品名称</th>
							<th>库存数量</th>
							<th>市场价</th>
							<th>销售价</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="cen">
							<td><input type="checkbox"/></td>
							<td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
							<td>50000斤</td>
							<td>￥4.00</td>
							<td>￥3.80</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="详情" class="mr-5">详情</a>
								<a title="删除">删除</a>
							</td>
						</tr>
						<tr class="cen">
							<td><input type="checkbox"/></td>
							<td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
							<td>50000斤</td>
							<td>￥4.00</td>
							<td>￥3.80</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a> -->
				<!-- <a title="详情" class="mr-5">详情</a>
                <a title="删除">删除</a>
            </td>
        </tr>
        <tr class="cen">
            <td><input type="checkbox"/></td>
            <td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
            <td>50000斤</td>
            <td>￥4.00</td>
            <td>￥3.80</td>
            <td>
                <a title="编辑" class="mr-5">编辑</a>
                <a title="详情" class="mr-5">详情</a>
                <a title="删除">删除</a>
            </td>
        </tr>
        <tr class="cen">
            <td><input type="checkbox"/></td>
            <td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
            <td>50000斤</td>
            <td>￥4.00</td>
            <td>￥3.80</td>
            <td>
                <a title="编辑" class="mr-5">编辑</a>
                <a title="详情" class="mr-5">详情</a>
                <a title="删除">删除</a>
            </td>
        </tr>
        <tr class="cen">
            <td><input type="checkbox"/></td>
            <td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
            <td>50000斤</td>
            <td>￥4.00</td>
            <td>￥3.80</td>
            <td>
                <a title="编辑" class="mr-5">编辑</a>
                <a title="详情" class="mr-5">详情</a>
                <a title="删除">删除</a>
            </td>
        </tr>
    </tbody>
</table> -->
				<!-- <table class="table table-bordered  mb-15">
					<thead>
						<tr>
							<th>id</th>
							<th>产品名称</th>
							<th>库存数量</th>
							<th>市场价</th>
							<th>销售价</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="cen">
							<td>#001</td>
							<td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
							<td>50000斤</td>
							<td>￥4.00</td>
							<td>￥3.80</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="详情" class="mr-5">详情</a>
								<a title="删除">删除</a>
							</td>
						</tr>
					</tbody>
				</table> -->
				<!-- <table class="table table-bordered table-striped mb-15">
					<thead>
						<tr>
							<th>id</th>
							<th>产品名称</th>
							<th>库存数量</th>
							<th>市场价</th>
							<th>销售价</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr class="cen">
							<td>#001</td>
							<td class="lt"><a href="#">正宗陕西洛川红富士 新鲜水果特惠</a></td>
							<td>50000斤</td>
							<td>￥4.00</td>
							<td>￥3.80</td>
							<td>
								<a title="编辑" class="mr-5">编辑</a>
								<a title="详情" class="mr-5">详情</a>
								<a title="删除">删除</a>
							</td>
						</tr>
					</tbody>
				</table> -->
				<table class="table table-bordered table-striped table-hover">
					<thead>
					<tr>
						<th>id</th>
						<th>公司名称</th>
						<th>公司发布岗位</th>
						<th>招聘总人数</th>
						<th>资质</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>
					<tr class="cen">
						<td>#001</td>
						<td class="lt"><a href="#">华为</a></td>
						<td>6</td>
						<td>50</td>
						<td>优</td>
						<td>
							<a title="编辑" class="mr-5">编辑</a>
							<a title="详情" class="mr-5">详情</a>
							<a title="删除">删除</a>
						</td>
					</tr>
					<tr class="cen">
						<td>#002</td>
						<td class="lt"><a href="#">华为</a></td>
						<td>6</td>
						<td>50</td>
						<td>优</td>
						<td>
							<a title="编辑" class="mr-5">编辑</a>
							<a title="详情" class="mr-5">详情</a>
							<a title="删除">删除</a>
						</td>
					</tr>
					<tr class="cen">
						<td>#002</td>
						<td class="lt"><a href="#">华为</a></td>
						<td>6</td>
						<td>50</td>
						<td>优</td>
						<td>
							<a title="编辑" class="mr-5">编辑</a>
							<a title="详情" class="mr-5">详情</a>
							<a title="删除">删除</a>
						</td>
					</tr>
					</tbody>
				</table>
				<!--开始::结束-->
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