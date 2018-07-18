<%--
  Created by IntelliJ IDEA.
  User: yiren
  Date: 2018-07-17
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="../css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="../fonts/ionicons.min.css">
    <link rel="stylesheet" href="../css/normalize.css">
</head>

<body>
<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand logo" href="#">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="index.html" style="padding-left:30px;">Home</a></li>
                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Courts&nbsp;</a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item"  href="badminton.html">Badminton</a>
                        <a class="dropdown-item"  href="#">Basketball</a>
                        <a class="dropdown-item"  href="#">Football</a></div>
                </li>
                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Classes&nbsp;</a>
                    <div class="dropdown-menu" role="menu"><a class="dropdown-item"  href="#">First Item</a><a class="dropdown-item"  href="#">Second Item</a><a class="dropdown-item"  href="#">Third Item</a></div>
                </li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="">Sign in</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="signup.html">Sign up</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page projets-page">
    <section class="portfolio-block project-no-images">
        <div class="container">

            <div class="heading" style="margin-top:-39px;margin-bottom:74px;">
                <h2>Badminton courts</h2>
                <input type="date" class="form-control-lg" style="margin-top:20px;margin-bottom:-20px;" /></div>
            <div style="margin:46px;"></div>
            <div class="row" style="margin-top:-20px;">
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <h3>Badminton Court 1</h3>
                        <h4>Location: Dalplex Gym</h4>
                        <a class="btn btn-outline-primary btn-sm" role="button" href="#"
                           data-toggle="modal" data-target="#myModal2">Book now</a>
                        <div class="tags"><a href="#" style="color:rgb(14,160,255);">available</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <h3>Badminton Court 2</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">Book now</a>
                        <div class="tags" style="color:rgb(14,160,255);"><a href="#" style="color:rgb(14,160,255);">Available</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image project-card-no-image-red">
                        <h3>Badminton Court 3</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">See More</a>
                        <div class="tags"><a href="#" style="color:rgb(239,84,84);">Full</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image project-card-no-image-red">
                        <h3>Badminton Court 4</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">See More</a>
                        <div class="tags"><a href="#" style="color:rgb(239,84,84);">Full</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <h3>Badminton Court 5</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">Book now</a>
                        <div class="tags"><a href="#" style="color:rgb(14,160,255);">Available</a></div>

                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image project-card-no-image-gray">
                        <h3>Badminton Court 6</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">See more</a>
                        <div class="tags"><a href="#" style="color:rgb(171, 178, 185);">Past</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <h3>Badminton Court 7</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">Book now</a>
                        <div class="tags"><a href="#" style="color:rgb(14,160,255);">Available</a></div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <h3>Badminton Court 8</h3>
                        <h4>Location: Dalplex Gym</h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">Book now</a>
                        <div class="tags"><a href="#" style="color:rgb(14,160,255);">Available</a></div>
                    </div>
                </div>

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
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/theme.js"></script>

</body>

</html>
