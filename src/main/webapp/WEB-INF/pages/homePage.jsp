<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: js
  Date: 2018-07-23
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <link rel="stylesheet" href="fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="css/Simple-Slider.css">
    <link rel="stylesheet" href="css/Newsletter-Subscription-Form.css">
    <link rel="stylesheet" href="css/Footer-Clean.css">

</head>
<body>

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
                        <li class="nav-item" ><a class="nav-link" href="/signup">Sign up</a></li>
                    </c:if>
                    <c:if test="${userStatus != null && userStatus != ''}" >
                        <%--<li class="nav-item" ><label class="nav-link">Welcome ${currentUser.student_name}</label></li>--%>
                        <%--<li class="nav-item" ><a class="nav-link" href="/student_page">MyBooking</a></li>--%>

                        <c:set var="adminStatus" scope="session" value="${currentUser.student_role}"/>
                        <c:if test="${adminStatus=='admin'}">

                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Welcome ${currentUser.student_name}</a>
                                <div class="dropdown-menu" role="menu">
                                    <a class="dropdown-item"  href="/dashboard">Dashboard</a>
                                    <a class="dropdown-item"  href="/logout">Logout</a>
                                </div>
                            </li>

                        </c:if>
                    </c:if>
                <c:if test="${userStatus != null && userStatus != ''}" >
                        <c:if test="${adminStatus == 'user'}">
                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Welcome ${currentUser.student_name}</a>
                            <div class="dropdown-menu" role="menu">
                                <a class="dropdown-item"  href="/student_page">MyBooking</a>
                                <a class="dropdown-item"  href="/logout">Logout</a>
                            </div>
                        </li>

                        </c:if>

                        <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Courts</a>
                        <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item"  href="/studentCourt/pages/tennis">Tennis</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/basketball">Basketball</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/soccer">Soccer</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/common">Common</a>
                        </div>
                        </li>
                        <%--<li class="nav-item" ><a class="nav-link" href="/logout">Logout</a></li>--%>
                    </c:if>

            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<div></div>
<div class="simple-slider">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image:url(https://res.cloudinary.com/dirbnqgl0/image/upload/v1531792215/slider2.jpg);height:700px;"></div>
            <div class="swiper-slide" style="background-image:url(https://res.cloudinary.com/dirbnqgl0/image/upload/v1531792215/slider3.jpg);height:700px;"></div>
            <%--<div class="swiper-slide" style="background-image:url(images/slider1.jpg);height:700px;"></div>--%>
            <%--<div class="swiper-slide" style="background-image:url(images/1528900362524.jpg);height:700px;"></div>--%>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>

<main class="page lanidng-page">
    <section class="portfolio-block call-to-action border-bottom">
        <div class="container">
            <div class="d-flex justify-content-center align-items-center content">
                <h3>Announcements</h3>
                <div id="homeAnnouncement">
                </div>
                <%--<button class="btn btn-outline-primary btn-lg" type="button" style="margin-left:30px">JOIN NOW</button>--%>
            </div>
        </div>
    </section>

<section class="portfolio-block skills" style="padding-top:50px;">
    <div class="container">
        <div class="heading">
            <h2><strong>Dalplex News &amp; Notices</strong></h2>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card special-skill-item border-0">
                    <div class="card-header bg-transparent border-0">
                        <i class="icon ion-ios-star-outline" ></i></div>
                    <div class="card-body">
                        <h3 class="card-title"><strong>Spend your summer !</strong></h3>
                        <p class="card-text"><a href="https://athletics.dal.ca/memberships.html">
                            <strong>Wondering what's included ?</strong><br>
                        </a>Drop by Dalplex during our regular hours of operation and speak to a Customer Service Representative.
                            Better yet,&nbsp;<strong>drop&nbsp;by for a tour of the facilities! &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong><br></p>
                    </div>
                </div>
                <%--<i class="fa fa-arrow-circle-right" style="font-size:24px;color:rgb(14,160,255);">--%>
                    <%----%>
                <%--</i>--%>
            </div>
            <div class="col-md-4">
                <div class="card special-skill-item border-0">
                    <div class="card-header bg-transparent border-0">
                        <i class="icon ion-ios-lightbulb-outline" >
                        </i>
                    </div>
                    <div class="card-body">
                        <h3 class="card-title"><strong>Summer camps at Dal</strong></h3>
                        <p class="card-text">Dalhousie day camps provide parents with the opportunity to choose from a variety of sport and recreational summer camp options, all designed to&nbsp;<strong>educate, challenge</strong>, and&nbsp;<strong>inspire</strong>children
                            ages 5-17.</p>
                    </div>
                </div>
                <%--<i class="fa fa-arrow-circle-right" style="font-size:24px;color:rgb(14,160,255);"></i>--%>

            </div>
            <div class="col-md-4">
                <div class="card special-skill-item border-0">
                    <div class="card-header bg-transparent border-0"><i class="icon ion-ios-gear-outline"></i></div>
                    <div class="card-body">
                        <h3 class="card-title"><strong>Canada Day holiday hours</strong></h3>
                        <p class="card-text">Please be aware that we are open holiday hours for Canada Day on Sunday, July 1.<br>
                            Opening hours: 9am-2pm (Dalplex and Sexton)<br>
                            <a href="https://athletics.dal.ca/facilities/hours.html">More Info >></a>
                            <br>
                        </p>
                    </div>
                </div>
                <%--<i class="fa fa-arrow-circle-right" style="font-size:24px;color:rgb(14,160,255);"></i>--%>
            </div>
            </div>
        </div>
    </div>
</section>

<%--<section class="portfolio-block website gradient">--%>
    <%--<div class="container">--%>
        <%--<div class="row align-items-center">--%>
            <%--<div class="col-md-12 col-lg-5 offset-lg-1 text">--%>
                <%--<h3 class="text-left">Contact us</h3>--%>
                <%--<p class="text-left">Phone: 902-494-3372<br>Email: dalplexinfo@dal.ca<br>Fax: 902-494-25746260 South Street<br>PO BOX 15000<br>Halifax, NS&nbsp; B3H 4R2</p>--%>
            <%--</div>--%>

        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>

<br>
<section>
    <div class="info">
        <h2 class="text-center">Where are we ?</h2>
        <p class="text-center">Dalplex, Dalhousie University </p>
        <p class="text-center">6260 South Street, Halifax, NS  B3H 4R2 </p>
    </div>

    <div class="align-content-center">
        <div style="width: 100%">
            <iframe class="align-content-center" width="100%" height="500" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=6260%20South%20Street+(Dalplex)&amp;ie=UTF8&amp;t=&amp;z=15&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                <a href="https://www.maps.ie/create-google-map/">Dalplex</a>
            </iframe>
        </div><br />
    </div>

</section>

<section>

    <div class="newsletter-subscribe" style="display:none;">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Subscribe for our Newsletter</h2>
                <p class="text-center">Keep watching our lasted news </p>
            </div>
            <form class="form-inline" method="post">
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Your Email"></div>
                <div class="form-group">
                    <button class="btn btn-primary" type="submit">Subscribe </button></div>
            </form>
        </div>
    </div>

</section>
<br>

</main>

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
<script>
    function contactInfo() {
        var info = confirm("Contact us via Email: DalplexBookingInfo@dorabmon.org");
        return info;
    }

</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<script src="js/Simple-Slider.js"></script>
<script src="js/theme.js"></script>
<script src="js/homePage.js"></script>

</body>
</html>
