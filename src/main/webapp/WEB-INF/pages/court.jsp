<%--
  Created by IntelliJ IDEA.
  User: yiren
  Date: 2018-07-17
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=basePath%>" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <link rel="stylesheet" href="css/normalize.css">
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
                        <a class="dropdown-item"  href="/studentCourt/pages/tennis">Tennis</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/basketball">Basketball</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/soccer">Soccer</a>
                        <a class="dropdown-item"  href="/studentCourt/pages/common">Common</a>
                    </div>
                </li>
                <%--<li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Classes&nbsp;</a>--%>
                    <%--<div class="dropdown-menu" role="menu"><a class="dropdown-item"  href="#">First Item</a><a class="dropdown-item"  href="#">Second Item</a><a class="dropdown-item"  href="#">Third Item</a></div>--%>
                <%--</li>--%>
                <li class="nav-item" role="presentation"><a class="nav-link" href="/student_page">MyBooking</a></li>
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
        <div class="links"><a href="#">About</a><a href="#" onclick="contactInfo()">Contact</a><a href="#">Terms of use</a></div>
        <div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>
    </div>
</footer>

<div class="book-course-modal">
    <div role="dialog" tabindex="-1" class="modal fade" id="myModal2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #0ea0ff">
                    <h4 id="id_h4" style="color: #ffffff"></h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body" id='modal-body-id' style="margin-left:auto;margin-right:auto;">

                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button>
                    <%--<button class="btn btn-primary" type="button">Book</button>--%>
                    <button class="btn btn-light" type="button" id="book_btn_id" onclick="courtBookTrigger(this)" value="" disabled>Book</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>
<script src="js/court.js"></script>
</body>

</html>
