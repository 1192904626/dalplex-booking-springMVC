<%--
  Created by IntelliJ IDEA.
  User: yiren
  Date: 2018-07-17
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="../../css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="../../fonts/ionicons.min.css">
    <link rel="stylesheet" href="../../css/normalize.css">
</head>

<body>
<div style="display:none;">
    <input id="court_type" value="<c:out value="${court_type}"/>"/>
</div>

<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand logo" href="#">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="/" style="padding-left:30px;">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Courts&nbsp;</a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item"  href="/studentCourt/pages/tennis">tennis</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/basketball">Basketball</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/soccer">Soccer</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/common">Common</a>
                    </div>
                </li>
                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Classes&nbsp;</a>
                    <div class="dropdown-menu" role="menu"><a class="dropdown-item"  href="#">First Item</a><a class="dropdown-item"  href="#">Second Item</a><a class="dropdown-item"  href="#">Third Item</a></div>
                </li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/login">Sign in</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/signup">Sign up</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page projets-page">
    <section class="portfolio-block project-no-images">
        <div class="container">

            <div class="heading" style="margin-top:-39px;margin-bottom:74px;">
                <h2>${court_type} courts</h2>
                <input type="date" class="form-control-lg" style="margin-top:20px;margin-bottom:-20px;" id="date_id" />
            </div>
            <div style="margin:46px;"></div>
            <div class="row" style="margin-top:-20px;" id="court_content">


            </div>
        </div>
    </section>
</main>
<footer class="page-footer">
    <div class="container">
        <div class="links"><a href="#">About</a><a href="#">Contact</a><a href="#">Terms of use</a></div>
        <div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>
    </div>
</footer>
<div class="book-course-modal">
    <div role="dialog" tabindex="-1" class="modal fade" id="myModal2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #0ea0ff">
                    <h4 style="color: #ffffff">Badminton Court 1</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">

                    <div class="form-group">
                        <label for="startTime">Start Time</label>
                        <input type="datetime-local" id="startTime" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="endTime">End Time</label>
                        <input type="datetime-local" id="endTime" class="form-control" />
                    </div>

                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="button">Book</button></div>
            </div>
        </div>
    </div>
</div>
<script src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/theme.js"></script>
<script src="../../js/court.js"></script>
</body>

</html>
