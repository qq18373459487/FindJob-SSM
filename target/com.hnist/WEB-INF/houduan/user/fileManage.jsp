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
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="javascript/ajaxfileupload.js" type="text/javascript"></script>
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
        <table>
            <tr>
                <td>附件</td>
                <td>
                    <input class="easyui-filebox" type="file" name="file1" id="file1">
                    <a href="javascript:imageUpload()" class="easyui-linkbutton">上传</a>
                </td>
                <td>
                    <input type="hidden"  id="ssFile" name="ssFile"> <!--用于文件名回显-->
                </td>
            </tr>
        </table>
            <div class="panel panel-default">
                <div class="panel-bd">
                    <div class="pagination"></div>
                </div>
            </div>

                <table class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                    <th>文件名称</th>
                    <th>文件路径</th>
                    <th>创建时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                    <c:forEach items="${list}" var="company">

                        <tbody>
                        <tr class="cen">
                            <td>${company.getFilename()}</td>
                            <td>${company.getUrl()}</td>
                            <td>${company.getTime()}</td>
                            <td>
                            <a href="">删除</a>
                            <a href="http://localhost:8080/com_hnist_war_exploded/user/download?filename=${company.getFilename()}" id="ssUrl" class="easyui-linkbutton">下载</a>
                            </td>
                        </tr>
                        </tbody>
                    </c:forEach>
            </table>
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
    function imageUpload(){
        var file1 = document.getElementById("file1");
        var ssFile = document.getElementById("ssFile");
        ssFile.value = file1.value.substring(12);    //取出文件名，并赋值回显到文本框，用于向后台传文件名
        $.ajaxFileUpload({
            url : 'http://localhost:8080/com_hnist_war_exploded/user/uploadFile', //用于文件上传的服务器端请求地址
            fileElementId : 'file1', //文件上传空间的id属性  <input type="fileModle" id="fileModle" name="fileModle" />
            type : 'post',
            dataType : 'text', //返回值类型 一般设置为json
            success : function(data, status) //服务器成功响应处理函数
            {
                alert("文件上传成功");
                window.location.href="http://localhost:8080/com_hnist_war_exploded/user/file"
            },
            error : function(data, status, e)//服务器响应失败处理函数
            {
                alert("文件上传失败");

            }
        });
    }
</script>
</html>
