<%--
  Created by IntelliJ IDEA.
  User: js
  Date: 2018-07-22
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();

    String serverName = request.getServerName();
    String basePath = null;

    if(serverName.indexOf("azurewebsites")>-1)
    {
        basePath = "https://"+request.getServerName()+path+"/";
    }
    else
    {
        basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    }

    pageContext.setAttribute("basePath",basePath);

%>
<html>
<head>
    <base href="<%=basePath%>" />
    <title>User Profile</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <link rel="stylesheet" href="fonts/font-awesome.min.css">
    <%--<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>


</head>
<body>
<%--<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">--%>
<%--<div class="container"><a class="navbar-brand logo" href="#">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>--%>
<%--<div class="collapse navbar-collapse" id="navbarNav">--%>
<%--<ul class="nav navbar-nav ml-auto">--%>
<%--<li class="nav-item" role="presentation"><a class="nav-link active" href="/">Home</a></li>--%>
<%--<li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign Out</a></li>--%>
<%--&lt;%&ndash;<li class="nav-item" role="presentation"><a class="nav-link" href="cv.html">CV</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="nav-item" role="presentation"><a class="nav-link" href="hire-me.html">Hire me</a></li>&ndash;%&gt;--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</nav>--%>

<script>
    function msg() {
        var info = confirm("Leave current page without saving changes !");
        return info;
    }
</script>

<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient" >
    <div class="container">
        <a class="navbar-brand logo" href="/">DalplexBooking</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">

                <c:set var="userStatus" scope="session" value="${currentUser.email}"/>
                <c:if test="${userStatus == null || userStatus==''}">
                    <li class="nav-item" ><a class="nav-link" href="/login">Sign in</a></li>
                </c:if>
                <c:if test="${userStatus != null && userStatus != ''}" >
                    <li class="nav-item" ><a class="nav-link" href="/student_page">MyBooking</a></li>

                    <li class="nav-item" ><a class="nav-link" href="/logout">Logout</a></li>
                </c:if>
                <%--<li class="nav-item" ><a class="nav-link" href="/signup">Sign up</a></li>--%>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1>Edit Profile</h1>
    <hr>
    <div class="row">
        <!-- left column -->
        <%--<div class="col-md-6" id="imageform">--%>
        <%--<div class="text-center">--%>
        <%--<c:set var="profile" scope="session" value="${currentUser.url}"/>--%> <%--<c:if test="${profile != null && profile != ''}">--%>
        <%--<img id="photo" src="${loggedUser.url}" class="img-responsive img-circle margin" style="display:inline; height:200px; " alt="profile" width="200" >--%>
        <%--</c:if>--%>
        <%--<c:if test="${profile == null || profile == ''}">--%>
        <%--<img id="photo" src="https://res.cloudinary.com/dvbwoaqub/image/upload/v1529721956/dorzkshungpisjr8hql9.jpg" class="img-responsive img-circle margin" style="display:inline; height:200px; " alt="profile" width="200" >--%>
        <%--</c:if>--%>
        <%--<h3>Change profile photo</h3>--%>
        <%--<a href="#" id="upload_widget_opener">Upload images</a>--%>
        <%--&lt;%&ndash;<input type="file" class="form-control">&ndash;%&gt;--%>
        <%--</div>--%>
        <%--</div>--%>
        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <%--<div class="alert alert-info alert-dismissable">--%>
                <%--<a class="panel-close close" data-dismiss="alert">×</a>--%>
                <%--<i class="fa fa-coffee"></i>--%>
                <%--<strong>Please save changes, before leave this page. </strong>--%>
            <%--</div>--%>
            <h3>Personal info</h3>

            <form class="form-horizontal" action="/profile/edit" method="post" id="editform">
                <div class="form-group">
                    <label class="col-md-3 control-label">Email:</label>
                    <div class="col-md-8">
                        <label> ${currentUser.email}</label>
                    </div>
                    <div class="col-md-5">
                        <label value="${currentUser.email}"></label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Membership Start Date:</label>
                    <div class="col-md-8">
                        <label> ${currentUser.membership_start_date}</label>
                    </div>
                    <%--<div class="col-md-5">--%>
                        <%--<input type="checkbox" name="userEmail" value="${currentUser.email}" required>--%>
                    <%--</div>--%>
                </div>

                <%--<div class="form-group">--%>
                    <%--<label class="col-md-3 control-label">Membership Day</label>--%>
                    <%--<div class="col-md-8">--%>
                        <%--<label> ${currentUser.membership_day}</label>--%>
                    <%--</div>--%>
                    <%--&lt;%&ndash;<div class="col-md-5">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="checkbox" name="userEmail" value="${currentUser.email}" required>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--</div>--%>



                <div class="form-group">
                    <label class="col-md-3 control-label">Username</label>
                    <div class="col-md-8">
                        <input class="form-control" type="text" name="userName" value="${currentUser.student_name}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Phone Number</label>
                    <div class="col-md-8">
                        <input class="form-control" type="text" name="phoneNum" value="${currentUser.phone_number}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Password:</label>
                    <div class="col-md-8">
                        <input class="form-control" type="password" name="password" placeholder="Please input new password" value="${currentUser.password}">
                    </div>
                </div>

                <div class="form-group" style="display:none">
                    <label class="col-md-3 control-label">Email</label>
                    <div class="col-md-8">
                        <input class="form-control" type="text" name="userEmail" value="${currentUser.email}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                        <span></span>
                        <button type="reset" class="btn btn-default">Cancel</button>
                    </div>
                </div>

            </form>

            <%--<a class="col-md-8" href="/student_page" onclick="msg()">Back</a>--%>
        </div>
    </div>
</div>
<hr>

<footer class="page-footer">
    <div class="container">
        <div class="links">
            <a href="#">About</a>
            <a href="#" onclick="contactInfo()">Contact</a>
            <a href="#">Terms of use</a>
        </div>
        <div class="social-icons">
            <a href="#"><i class="icon ion-social-facebook"></i></a>
            <a href="#"><i class="icon ion-social-instagram-outline"></i></a>
            <a href="#"><i class="icon ion-social-twitter"></i></a>
        </div>
    </div>
</footer>

<%--<footer class="page-footer">--%>
<%--<div class="container">--%>
<%--<div class="links"><a href="#">About me</a><a href="#">Contact me</a><a href="#">Projects</a></div>--%>
<%--<div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>--%>
<%--</div>--%>
<%--</footer>--%>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%--<script src="../js/Profile-Edit-Form.js"></script>--%>
<script src="js/theme.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<script src="js/Simple-Slider.js"></script>

</body>
<%--<script src="//widget.cloudinary.com/global/all.js" type="text/javascript"></script>--%>
<%--<script src='//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>--%>
</html>