<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <style>
        .span{
            color:red;
            font-weight:bold;
        }
    </style>
</head>
<body>
<%--<script type="text/javascript">--%>
<%--    function tocommonlogin()--%>
<%--    {--%>

<%--        var com_user=$.trim($("#com_user").val());--%>
<%--        var com_pwd=$.trim($("#com_pwd").val());--%>
<%--        if(com_user==null)--%>
<%--        {--%>
<%--            alert("用户名不能为空");--%>
<%--            return ;--%>
<%--        }else if(com_pwd==null)--%>
<%--        {--%>
<%--            alert("密码不能为空");--%>
<%--            return ;--%>
<%--        }--%>
<%--        $.ajax(--%>
<%--            {--%>
<%--                url:'http://localhost:8080/com_hnist_war_exploded/commonlogin',--%>
<%--                data: {--%>
<%--                    com_user:com_user,--%>
<%--                    com_pwd:com_pwd,--%>
<%--                },--%>
<%--                type:'post',--%>
<%--                dataType:'json',--%>
<%--                success(data){--%>
<%--                    window.location.href="http://localhost:8080/com_hnist_war_exploded/default"--%>
<%--                }--%>
<%--            }--%>

<%--        )--%>


<%--    }--%>

<%--</script>--%>
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

<section class="page-title title-bg12">
    <div class="d-table">
        <div class="d-table-cell">
            <h2>简历投递</h2>
            <ul>
                <li>
                    <a href="default.jsp">主页</a>
                </li>
                <li>简历投递</li>
            </ul>
        </div>
    </div>
    <div class="lines">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
</section>

<div class="signin-section ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-8 offset-md-2 offset-lg-3">
                <div class="signin-form" >
                    <div class="form-group">
                        <label>公司邮箱</label>
                        <input type="email" class="form-control" placeholder="${postman}" value="${postman}" required="" id="re_man" name="re_man" readonly="true">
                    </div>
                    <div class="form-group">
                        <label>申请职位</label>
                        <input type="email" class="form-control" placeholder="${post_cv}"   value="${post_cv}" required="" id="post_cv" name="post_cv" readonly="true">
                    </div>
                    <div class="form-group">
                        <label>个人邮箱</label>
                        <input type="email" class="form-control" value="${JobSeekers}" required="" id="post_man" name="post_man">
                    </div>
                    <div class="form-group">
                        <table>
                            <tr>
                                <td>个人简历</td>
                                <td>
                                    <input class="easyui-filebox" type="file" name="file1" id="file1">
                                    <a href="javascript:imageUpload()" class="easyui-linkbutton">上传</a>
                                </td>
                                <td>
                                    <input type="hidden"  id="ssFile" name="ssFile"> <!--用于文件名回显-->
                                </td>
                            </tr>
                        </table>
                    </div>
                    <span id="msg" class="span text-center"></span>
                    <div class="signin-btn text-center">
                        <button type="button" onclick="postCv()">发送</button>
                    </div>
                    <div class="other-signin text-center">
                        <span>或者使用其他账号</span>
                        <ul>
                            <li>
                                <a href="#">
                                    <i class='bx bxl-google'></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class='bx bxl-facebook'></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class='bx bxl-twitter'></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class='bx bxl-linkedin'></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="create-btn text-center">
                        <p>没有账号?
                            <a href="http://localhost:8080/com_hnist_war_exploded/toregister">
                                点击创建账号
                                <i class='bx bx-chevrons-right bx-fade-right'></i>
                            </a>
                        </p>
                    </div>
                    <div class="create-btn text-center">
                        <p>忘记密码?
                            <a href="http://localhost:8080/com_hnist_war_exploded/GotoFindPassword">
                                点击找回账号
                                <i class='bx bx-chevrons-right bx-fade-right'></i>
                            </a>
                        </p>
                    </div>
                </div>
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
                            <a href="job-list.jsp">
                                <i class='bx bx-chevrons-right bx-tada'></i>
                                工作列表 </a>
                        </li>
                        <li>
                            <a href="sign-up.jsp">
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
                            <a href="../../qianduan/pricing.html">
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

<script src="javascript/ajaxfileupload.js" type="text/javascript"></script>

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
            },
            error : function(data, status, e)//服务器响应失败处理函数
            {
                alert("文件上传失败");

            }
        });
    }

    function postCv()
    {
        var re_man=$.trim($("#re_man").val());
        var post_man=$.trim($("#post_man").val());
        var ssFile=$.trim($("#ssFile").val());
        var post_cv=$.trim($("#post_cv").val());


        if(post_man==null)
        {
            alert("邮箱不能为空");
            return ;
        }else if (ssFile==null)
        {
            alert("文件不为空");
            return ;
        }
        $.ajax(
            {
                url:'http://localhost:8080/com_hnist_war_exploded/work/postCv',
                data: {
                    re_man:re_man,
                    post_man:post_man,
                    ssFile:ssFile,
                    post_cv:post_cv
                },
                type:'post',
                dataType:'json',
                success:function (data)
                {
                    if(data.code==="0")
                    {
                        $("#msg").html("发送成功，即将跳转到主页");
                        setTimeout(() => window.location.href="http://localhost:8080/com_hnist_war_exploded/default", 1800)
                    }else if(data.code==="1")
                    {
                        $("#msg").html("发送失败");
                    }
                }
            }

        )


    }
</script>
</html>