<%--
  Created by IntelliJ IDEA.
  User: js
  Date: 2018-07-17
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="../css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="../css/Profile-Edit-Form.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="../fonts/ionicons.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand logo" href="#">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link active" href="/">Home</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="#">Sign Out</a></li>
                <%--<li class="nav-item" role="presentation"><a class="nav-link" href="cv.html">CV</a></li>--%>
                <%--<li class="nav-item" role="presentation"><a class="nav-link" href="hire-me.html">Hire me</a></li>--%>
            </ul>
        </div>
    </div>
</nav>
<main class="page lanidng-page"></main>
    <div class="container profile profile-view" id="profile">

        <form action="/profile/edit" method="post">
            <div class="form-row profile-row">
                <div class="col-md-4 relative">
                    <div class="avatar">
                        <div class="avatar-bg center"></div>
                    </div><input type="file" class="form-control" name="avatar-file"></div>
                <div class="col-md-8">
                    <h1>Profile </h1>
                    <hr>
                    <div class="form-group">
                        <label>Email</label>
                        <label class="form-control">${currentUser.email}</label>
                        <input class="form-control" type="checkbox" name="userEmail" value="${currentUser.email}" required>
                    </div>

                    <div class="form-group">
                        <label>Membership Start Date</label>
                        <label class="form-control">${currentUser.membership_start_date}</label>
                        <%--<input class="form-control" type="checkbox" name="userEmail" value="email@qq.com" required>--%>
                    </div>

                    <div class="form-group">
                        <label>Username</label>
                        <input class="form-control" type="text" name="userName" placeholder="${currentUser.student_name}" value="${currentUser.student_name}"></div>

                    <div class="form-group">
                        <label>Phone Number</label>
                        <input class="form-control" type="number" name="phoneNum" value="${currentUser.phone_number}"></div>

                    <div class="form-group">
                        <label>Password</label>
                        <input class="form-control" type="password" autocomplete="off" name="password" value="${currentUser.password}"></div>
                    <hr>
                    <hr>
                    <div class="form-row">
                        <div class="col-md-12 content-right">
                            <button class="btn btn-primary form-btn" type="submit">SAVE </button>
                            <button class="btn btn-danger form-btn" type="reset">CANCEL </button></div>
                    </div>
                </div>
            </div>
        </form>
    </div>
<footer class="page-footer">
    <div class="container">
        <div class="links"><a href="#">About me</a><a href="#">Contact me</a><a href="#">Projects</a></div>
        <div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>
    </div>
</footer>
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/Profile-Edit-Form.js"></script>
<script src="../js/theme.js"></script>

</body>
</html>
