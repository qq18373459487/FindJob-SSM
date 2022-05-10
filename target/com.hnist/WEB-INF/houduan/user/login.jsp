<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8"/>
<title>登录-后台管理系统</title>
<meta name="keywords"  content="设置关键词..." />
<meta name="description" content="设置描述..." />
<meta name="author" content="DeathGhost" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name='apple-touch-fullscreen' content='yes'>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="address=no">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script src="javascript/jquery.js"></script>
<script src="javascript/public.js"></script>
<script src="javascript/plug-ins/customScrollbar.min.js"></script>
<script src="javascript/pages/login.js"></script>

	<style>
		.span{
			color:red;
			font-weight:bold;
		}
</style>
</head>
<body class="login-page">
	<section class="login-contain">
		<header>
			<h1>后台管理系统</h1>
			<p>management system</p>
		</header>
		<div class="form-content">
			<ul>
				<li>
					<div class="form-group">
						<label class="control-label">管理员账号：</label>
						<input type="text" placeholder="管理员账号..." class="form-control form-underlined" id="username"/>
					</div>
				</li>
				<li>
					<div class="form-group">
						<label class="control-label">管理员密码：</label>
						<input type="password" placeholder="管理员密码..." class="form-control form-underlined" id="password"/>
					</div>
				</li>
				<li>
					<label class="check-box">
						<input type="checkbox" name="remember"/>
						<span>记住账号密码</span>
					</label>
				</li>
				<span id="msg" class="span"></span>
				<li>
					<button type="submit" class="btn btn-lg btn-block"  id="login_btn">立即登录</button>
				</li>

				<li>
					<p class="btm-info">©Copyright 2006-2010 <a href="#" target="_blank" title="DeathGhost">DeathGhost.cn</a></p>
					<address class="btm-info">陕西省西安市雁塔区</address>
				</li>
			</ul>
		</div>
	</section>
<%--<div class="mask"></div>--%>
<%--<div class="dialog">--%>
<%--	<div class="dialog-hd">--%>
<%--		<strong class="lt-title">标题</strong>--%>
<%--		<a class="rt-operate icon-remove JclosePanel" title="关闭"></a>--%>
<%--	</div>--%>
<%--	<div class="dialog-bd">--%>
<%--		<!--start::-->--%>
<%--		<p>这里是基础弹窗,可以定义文本信息，HTML信息这里是基础弹窗,可以定义文本信息，HTML信息。</p>--%>
<%--		<!--end::-->--%>
<%--	</div>--%>
<%--	<div class="dialog-ft">--%>
<%--		<button class="btn btn-info JyesBtn">确认</button>--%>
<%--		<button class="btn btn-secondary JnoBtn">关闭</button>--%>
<%--	</div>--%>
</div>
	<script type="text/javascript">

		$(function ()
		{
			$("#login_btn").click(function (){
				//获取框内的参数
				var username=$.trim($("#username").val());
				var password=$.trim($("#password").val());
				if(username==null)
				{
					alert("用户名不能为空");
					return ;
				}else if(password==null)
				{
					alert("密码不能为空");
					return ;
				}
				$.ajax(
						{
							url:'http://localhost:8080/com_hnist_war_exploded/index',
							data: {
								username:username,
								password:password
							},
							type:'post',
							dataType:'json',
							success:function (data)
							{
								if(data.code=="1")
								{
									//跳转业务主页面
									window.location.href="http://localhost:8080/com_hnist_war_exploded/login-sucess";
								}else
								{
									$("#msg").html(data.message);
								}
							}
						}

				)


			});
		});
	</script>
</body>
</html>
