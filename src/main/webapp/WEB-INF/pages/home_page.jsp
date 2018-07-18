<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>home_page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="css/Article-List.css">
    <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
    <link rel="stylesheet" href="css/Data-Table.css">
    <link rel="stylesheet" href="css/Data-Table.css">
    <link rel="stylesheet" href="css/Dynamic-Table.css">
    <link rel="stylesheet" href="css/Footer-Basic.css">
    <link rel="stylesheet" href="css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="css/Lightbox-Gallery.css">
    <link rel="stylesheet" href="css/Navigation-with-Button.css">
    <link rel="stylesheet" href="css/Navigation-with-Search.css">
    <link rel="stylesheet" href="css/Newsletter-Subscription-Form.css">
    <link rel="stylesheet" href="css/product-list.css">
    <link rel="stylesheet" href="css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="css/Sidebar-Menu.css">
    <link rel="stylesheet" href="css/Sidebar-Menu.css">
    <link rel="stylesheet" href="css/SIdebar-Responsive-2.css">
    <link rel="stylesheet" href="css/SIdebar-Responsive-2.css">
    <link rel="stylesheet" href="css/Simple-Slider.css">
    <link rel="stylesheet" href="css/sss-Product-List-f.css">
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
<div>
    <nav class="navbar navbar-light navbar-expand-md sticky-top navigation-clean-button" style="background-color:#c08c0c;color:#222222;" data-toggle="sticky-onscroll">
        <div class="container"><a class="navbar-brand" href="#" style="font-size:29px;">Dalplex Booking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                    class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#course-display" style="font-size:20px;"><strong>Course</strong></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#court-display" style="font-size:20px;"><strong>Court</strong></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#contact-us" style="font-size:20px;"><strong>Contact</strong></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="font-size:20px;"><strong>About</strong></a></li>
                    <%--<li class="nav-item" role="presentation"><a class="nav-link" href="admin_dashboard.html" style="font-size:20px;"><strong>Admin</strong></a></li>--%>
                </ul><span class="navbar-text actions"> <a href="/login" class="login" style="font-size:20px;">Log In</a><a class="btn btn-light action-button" role="button" href="/signup" style="font-size:20px;background-color:#222222;">Sign Up</a></span></div>
        </div>
    </nav>
</div>
<div></div>
<div class="simple-slider">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image:url(https://res.cloudinary.com/dirbnqgl0/image/upload/v1531792215/slider2.jpg);"></div>
            <div class="swiper-slide" style="background-image:url(https://res.cloudinary.com/dirbnqgl0/image/upload/v1531792215/slider3.jpg);"></div>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
    <div class="bulletin">
        <img src="./image/notification.png" alt="notification image" height="42" width="42">
        <span><Strong>Lastest Announcement:</Strong></span>
        <a href="#" class="bulletin_iterator">&lt;&lt;</a>
        <a href="#" id="bulletin_title" class="bulletin_content">Dalplex will be closed at 10:00 pm on Sunday</a>
        <a href="#" class="bulletin_iterator">&gt;&gt;</a>
    </div>
</div>
<div class="photo-gallery">
    <div class="container" id="course-display">
        <div class="intro">
            <h2 class="text-center">Course</h2>
        </div>
        <div class="row photos">
                <c:forEach items="${courseList}" var="course">
                <div class="col-sm-6 col-md-4 col-lg-3 item">
                    <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                        <img  class="img-fluid" src=${course.course_cover_image_link}>
                    </a>
                    <label style="font-size:28px;padding-left:0px;">${course.course_name}</label>
                </div>
                </c:forEach>
    </div>
    <div class="container" id="court-display">
        <div class="intro">
            <h2 class="text-center">Court</h2>
        </div>
        <div class="row photos">
            <c:forEach items="${courtList}" var="court">
                <div class="col-sm-6 col-md-4 col-lg-3 item">
                    <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                        <img  class="img-fluid" src=${court.courtDescription}>
                    </a>
                    <label style="font-size:28px;padding-left:0px;">${court.courtName}</label>
                </div>
            </c:forEach>
      </div>
    </div>
</div>
<div class="footer-basic" id="contact-us">
    <footer>
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Home</a></li>
            <li class="list-inline-item"><a href="#">Services</a></li>
            <li class="list-inline-item"><a href="#">About</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Dalplex Booking System 2017</p>
    </footer>
</div>
<div class="newsletter-subscribe">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Subscribe for our Newsletter</h2>
            <p class="text-center">Keep watching our lasted news </p>
        </div>
        <form class="form-inline" method="post">
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Your Email"></div>
            <div class="form-group"><button class="btn btn-primary" type="submit">Subscribe </button></div>
        </form>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="js/Dynamic-Table.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<script src="js/Sidebar-Menu-1.js"></script>
<script src="js/Sidebar-Menu.js"></script>
<script src="js/Simple-Slider.js"></script>
<script src="js/sticky.js"></script>
</body>

</html>