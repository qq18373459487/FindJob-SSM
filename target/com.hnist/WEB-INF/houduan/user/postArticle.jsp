<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <script src="editor/ueditor.parse.js"></script>
    <script src="javascript/plug-ins/pagination.js"></script>
    <script src="javascript/public.js"></script>
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
                        <c:if test="${role=='管理员'}">

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
                        </c:if>
                        <c:if test="${role=='HR'}">
                            <dd>
                                <a href="http://localhost:8080/com_hnist_war_exploded/user/GotoCvManage">简历列表</a>
                            </dd>
                            <dd>
                                <a href="http://localhost:8080/com_hnist_war_exploded/work/workList_HR">工作列表</a>
                            </dd>
                        </c:if>
                    </dl>
                </li>
                <li>
                    <dl>
                        <c:if test="${role=='HR'}">
                            <dt>
                                <i class="icon-inbox"></i>文件管理<i class="icon-angle-right"></i>
                            </dt>
                            <dd>
                                <a href="http://localhost:8080/com_hnist_war_exploded/user/file">文件下载</a>
                            </dd>
                            <dd>
                                <a href="http://localhost:8080/com_hnist_war_exploded/user/excel">数据导入导出</a>
                            </dd>
                        </c:if>
                    </dl>
                </li>
            </ul>
        </nav>
        <footer class="side-footer">© DeathGhost 版权所有</footer>

    </div>

    <main class="main-cont content mCustomScrollbar">
        <div class="page-wrap">
            <!--开始::内容-->
            <section class="page-hd">
                <header>
                    <h2 class="title">文章发布</h2>
                </header>
                <hr>
            </section>
            <div class="form-group-col-2">
                <div class="form-label">文章标题</div>
                <div class="form-cont">
                    <input type="text"  class="form-control form-boxed" name="title" id="title">
                </div>
            </div>
            <div class="form-group-col-2">
                <div class="form-label">文章简介</div>
                <div class="form-cont">
                    <textarea class="form-control form-boxed" name="brief_introduction" id="brief_introduction">文章简介</textarea>
                </div>
            </div>

            <div class="form-group-col-2">
                <div class="form-label">文章内容</div>
                <div class="form-cont">
                    <textarea class="form-control form-boxed"  name="author_text" id="author_text">文章内容</textarea>
                </div>
            </div>
            <span id="msg" class="span text-center"></span>
            <div class="form-group-col-2">
                <div class="form-label"></div>
                <div class="form-cont">
                    <input type="button" class="btn btn-primary" onclick="postArticle()" value="发布" />
                </div>
            </div>
            <!--开始::结束-->
        </div>
        </br>
        </br>
        </br>
        </br>
        </br>
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
<script type="text/javascript">
    function postArticle()
    {
        var title=$.trim($("#title").val());
        var brief_introduction=$.trim($("#brief_introduction").val());
        var author_text=$.trim($("#author_text").val());

        $.ajax(
            {
                url:'http://localhost:8080/com_hnist_war_exploded/user/addArticle',
                data: {
                    title:title,
                    brief_introduction:brief_introduction,
                    author_text:author_text
                },
                type:'post',
                dataType:'json',
                success:function (data)
                {
                    if(data.code==="0")
                    {
                        $("#msg").html("发布失败");

                    }else if(data.code==="1")
                    {
                        $("#msg").html("发布成功，稍后将刷新本页面");
                        setTimeout(() =>window.location.href="http://localhost:8080/com_hnist_war_exploded/user/GOtoAddArticle", 1800)

                    }
                }
            }

        )


    }

</script>
<script>
    var textarea = document.getElementById("author_text");
    textarea.addEventListener('input', (e) => {
        textarea.style.height = '100px';
        textarea.style.height = e.target.scrollHeight + 'px';
    });
</script>
</html>