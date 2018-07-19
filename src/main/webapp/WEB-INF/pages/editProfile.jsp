<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>User Profile</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
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

<div class="container">
    <h1 class="col-md-6">Edit Profile</h1>
    <hr>
    <div class="row">
        <!-- left column -->
        <div class="col-md-6" id="imageform">
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
        </div>
        <!-- edit form column -->
        <div class="col-md-9 personal-info">
            <div class="alert alert-info alert-dismissable">
                <a class="panel-close close" data-dismiss="alert">×</a>
                <i class="fa fa-coffee"></i>
                Please <strong>save</strong> changes, before leave the page.
            </div>
            <h3>Personal info</h3>

            <form class="form-horizontal" action="/profile/edit" method="post" id="editform">
                <div class="form-group">
                    <label class="col-md-3 control-label">Email:</label>
                    <div class="col-md-8">
                        <label> ${currentUser.email}</label>
                    </div>
                    <div class="col-md-5">
                        <input type="checkbox" name="userEmail" value="${currentUser.email}" required>
                    </div>
                </div>
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
                <div class="form-group" style="display:none;">
                    <label class="col-md-3 control-label">New profile</label>
                    <%--<div class="col-md-8">--%>
                        <%--<input class="form-control" type="text" name="url" value="${currentUser.url}" id="imageurl">--%>
                    <%--</div>--%>
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
        </div>
    </div>
</div>
<hr>

<footer class="page-footer">
<div class="container">
<div class="links"><a href="#">About me</a><a href="#">Contact me</a><a href="#">Projects</a></div>
<div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>
</div>
</footer>
<script src="../js/jqueryJsun.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<%--<script src="../js/Profile-Edit-Form.js"></script>--%>
<script src="../js/theme.js"></script>

</body>
<script src="//widget.cloudinary.com/global/all.js" type="text/javascript"></script>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>
<%--<script type="text/javascript">--%>
    <%--var image_url = '';--%>
    <%--document.getElementById("upload_widget_opener").addEventListener("click", function() {--%>
        <%--cloudinary.openUploadWidget({--%>
                <%--cloud_name: 'dvbwoaqub',--%>
                <%--upload_preset: 'p6b4gfgx'},--%>
            <%--function(error, result)--%>
            <%--{--%>
                <%--console.log(error, result);--%>
                <%--image_url = result[0].url;--%>
                <%--console.log(image_url);--%>
                <%--$("#photo").attr('src',image_url);--%>
                <%--$("#imageurl").attr('value',image_url);--%>
            <%--});--%>
    <%--}, false);--%>
<%--</script>--%>
</html>








<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: js--%>
  <%--Date: 2018-07-17--%>
  <%--Time: 7:40 PM--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>

    <%--<meta charset="utf-8">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <%--<title>Edit Profile</title>--%>
    <%--<link rel="stylesheet" href="../css/bootstrapyiren.min.css" >--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="../css/Profile-Edit-Form.css">&ndash;%&gt;--%>
    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">--%>
    <%--<link rel="stylesheet" href="../fonts/ionicons.min.css">--%>
    <%--&lt;%&ndash;<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<title>User Profile</title>&ndash;%&gt;--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>

    <%--<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>



    <%--<script>--%>
        <%--function msg() {--%>
            <%--alert("I am an alert box!");--%>
        <%--}--%>
    <%--</script>--%>

<%--</head>--%>
<%--<body>--%>

<%--<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">--%>
    <%--<div class="container"><a class="navbar-brand logo" href="#">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>--%>
        <%--<div class="collapse navbar-collapse"--%>
             <%--id="navbarNav">--%>
            <%--<ul class="nav navbar-nav ml-auto">--%>
                <%--<li class="nav-item" role="presentation"><a class="nav-link active" href="/">Home</a></li>--%>
                <%--<li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign Out</a></li>--%>
                <%--&lt;%&ndash;<li class="nav-item" role="presentation"><a class="nav-link" href="cv.html">CV</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li class="nav-item" role="presentation"><a class="nav-link" href="hire-me.html">Hire me</a></li>&ndash;%&gt;--%>
            <%--</ul>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</nav>--%>
<%--<main class="page lanidng-page"></main>--%>
    <%--<div class="container profile profile-view" id="profile">--%>

        <%--<form class="form-horizontal" action="/profile/edit" method="post">--%>
            <%--&lt;%&ndash;<div class="form-row profile-row">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-md-4 relative">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<div class="avatar">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<div class="avatar-bg center"></div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</div><label></label></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="col-md-8">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<h1>Profile </h1>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<hr>&ndash;%&gt;--%>
                    <%--<div class="form-group">--%>
                        <%--<label class="col-md-3 control-label">Email:</label>--%>
                        <%--<label class="col-md-8">${currentUser.email}</label>--%>
                        <%--<div class="col-md-5">--%>
                            <%--<input type="checkbox" name="userEmail" placeholder="${currentUser.email}" value="${currentUser.email}" required>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="form-group">--%>
                        <%--<label>Membership Start Date</label>--%>
                        <%--<label class="form-control">${currentUser.membership_start_date}</label>--%>
                    <%--</div>--%>

                    <%--<div class="form-group">--%>
                        <%--<label class="col-md-3 control-label">Username</label>--%>
                        <%--<input class="col-md-8" type="text" name="userName" placeholder="${currentUser.student_name}" value="${currentUser.student_name}"></div>--%>

                    <%--<div class="form-group">--%>
                        <%--<label class="col-md-3 control-label">Phone Number</label>--%>
                        <%--<input class="col-md-8" type="text" name="phoneNum" placeholder="${currentUser.phone_number}" value="${currentUser.phone_number}">--%>
                    <%--</div>--%>

                    <%--<div class="form-group">--%>
                        <%--<label class="col-md-3 control-label">Password</label>--%>
                        <%--<input class="col-md-8" type="password" autocomplete="off" name="password" value="${currentUser.password}">--%>
                    <%--</div>--%>
                    <%--<hr>--%>
                    <%--<hr>--%>
                    <%--<div class="form-group">--%>
                        <%--<label class="col-md-3 control-label"></label>--%>
                        <%--<div class="col-md-8">--%>
                            <%--<button class="btn btn-primary" type="submit" onclick="msg()">SAVE </button>--%>
                            <%--<button class="btn btn-danger" type="reset">CANCEL </button>--%>
                        <%--</div>--%>
                    <%--</div>--%>
        <%--</form>--%>
    <%--</div>--%>

<%--<footer class="page-footer">--%>
    <%--<div class="container">--%>
        <%--<div class="links"><a href="#">About me</a><a href="#">Contact me</a><a href="#">Projects</a></div>--%>
        <%--<div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>--%>
    <%--</div>--%>
<%--</footer>--%>
<%--<script src="../js/jqueryJsun.min.js"></script>--%>
<%--<script src="../js/bootstrap.min.js"></script>--%>
<%--<script src="../js/Profile-Edit-Form.js"></script>--%>
<%--<script src="../js/theme.js"></script>--%>

<%--</body>--%>
<%--</html>--%>
