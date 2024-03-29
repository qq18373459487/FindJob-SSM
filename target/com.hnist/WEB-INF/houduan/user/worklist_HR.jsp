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
  <script src="javascript/plug-ins/pagination.js"></script>
  <script src="javascript/public.js"></script>
</head>
<style>
  .hide{
    display: none;
  }
  .c1{
    position: fixed;
    top:0;
    bottom: 0;
    left:0;
    right: 0;
    background: rgba(0,0,0,.5);
    z-index: 2;
  }
  .c2{
    background-color: white;
    position: fixed;
    /*width: 400px;*/
    /*height: 500px;*/
    top:50%;
    left: 50%;
    z-index: 3;
    margin-top: -150px;
    margin-left: -200px;
  }
  #modal p {
    margin-left:80px;
  }
</style>
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
            <c:if test="${role!='HR'}">
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
        <li>
          <dl>
            <c:if test="${role!='HR'}">
              <dt>
                <i class="icon-inbox"></i>博客管理<i class="icon-angle-right"></i>
              </dt>
              <dd>
                <a href="http://localhost:8080/com_hnist_war_exploded/user/GOtoAddArticle">博客发布</a>
              </dd>
              <dd>
                <a href="http://localhost:8080/com_hnist_war_exploded/user/getArticle">文章列表</a>
              </dd>
              <dd>
                <a href="http://localhost:8080/com_hnist_war_exploded/user/getComment">评论列表</a>
              </dd>
            </c:if>
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
      <div class="page-wrap">
<%--        <button class="btn btn-secondary JopenMaskPanel_addStudent mr-10" style="margin-bottom: 20px; margin-left: 20px;" onclick="Show()">添加</button>--%>
        <table class="table table-bordered table-striped table-hover">
          <thead>
          <tr>
            <td>id</td>
            <th>工作名称</th>
            <th>工作时间</th>
            <th>发布公司</th>
            <th>工作地址</th>
            <th>工作类型</th>
            <th>薪水</th>
            <th>经验要求</th>
            <th>操作</th>
          </tr>
          </thead>
          <c:forEach items="${list}" var="coms">
            <tbody>
            <tr class="cen">
              <td>${coms.getId()}</td>
              <td>${coms.getWorkName()}</td>
              <td>${coms.getWorkTime()}</td>
              <td>${coms.getPostCompany()}</td>
              <td>${coms.getLocation()}</td>
              <td>${coms.getWorkType()}</td>
              <td>${coms.getSalary()}</td>
              <td>${coms.getExperince()}</td>
              <td>
                <a title="编辑" class="mr-5" onclick="Show1(${coms.getId()})">编辑</a>
                <a title="删除" onclick="deleteCompany(${coms.getId()})">删除</a>
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
<%--这里是控制JS弹窗的--%>
<script type="text/javascript">
  function Show1(id)
  {
    window.location.href="http://localhost:8080/com_hnist_war_exploded/user/GotoUpdateWork_HR?id="+id;
  }
</script>
<script>
  $(".pagination").createPage({
    pageCount:${maxPage},
    current:${page},
    backFn:function(p){
      window.location.href="http://localhost:8080/com_hnist_war_exploded/work/workList_HR?page="+p;
    }
  });
</script>
<script type="text/javascript">
  function deleteCompany(id)
  {
    alert("确定要删除吗？");
    window.location.href="http://localhost:8080/com_hnist_war_exploded/work/DeleteWork_HR?id="+id;
  }
</script>
</html>
