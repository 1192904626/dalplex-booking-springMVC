<%--
  Created by IntelliJ IDEA.
  User: js
  Date: 2018-08-06
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
    <%--String path = request.getContextPath();--%>

    <%--String serverName = request.getServerName();--%>
    <%--String basePath = null;--%>

    <%--if(serverName.indexOf("azurewebsites")>-1)--%>
    <%--{--%>
        <%--basePath = "https://"+request.getServerName()+path+"/";--%>
    <%--}--%>
    <%--else--%>
    <%--{--%>
        <%--basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
    <%--}--%>

    <%--pageContext.setAttribute("basePath",basePath);--%>

<%--%>--%>
<html>
<head>
    <%--<base href="<%=basePath%>" />--%>
    <title>ClassPage</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
        <link rel="stylesheet" href="css/Article-List.css">
        <link rel="stylesheet" href="css/DashBoard-light-boostrap.css">
        <link rel="stylesheet" href="css/Data-Table.css">
        <link rel="stylesheet" href="css/Dynamic-Table.css">
        <link rel="stylesheet" href="css/Footer-Basic.css">
        <link rel="stylesheet" href="css/Footer-Clean.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
        <link rel="stylesheet" href="css/Lightbox-Gallery.css">
        <%--<link rel="stylesheet" href="css/Navigation-with-Button.css">--%>
        <%--<link rel="stylesheet" href="css/Navigation-with-Search.css">--%>
        <link rel="stylesheet" href="css/product-list.css">
        <link rel="stylesheet" href="css/Sidebar-Menu.css">
        <link rel="stylesheet" href="css/SIdebar-Responsive-2.css">
        <link rel="stylesheet" href="css/Simple-Slider.css">
        <link rel="stylesheet" href="css/sss-Product-List-f.css">
        <link rel="stylesheet" href="css/styles.css">

        <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
        <link rel="stylesheet" href="fonts/ionicons.min.css">
        <link rel="stylesheet" href="fonts/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
        <link rel="stylesheet" href="css/Simple-Slider.css">
        <link rel="stylesheet" href="css/Newsletter-Subscription-Form.css">

        <link rel="stylesheet" href="fonts/ionicons.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<body>

<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand logo" href="/">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="/" style="padding-left:30px;">Home</a></li>

                <li class="nav-item" ><a class="nav-link" href="/studentCourt/pages/tennis">Court</a></li>
                <li class="nav-item" ><a class="nav-link" href="/student_page">MyBooking</a></li>
                <li class="nav-item" ><a class="nav-link" href="/logout">Logout</a></li>

            </ul>
        </div>
    </div>
</nav>
<main class="page hire-me-page">

    <section>
        <div class="photo-gallery">
            <div class="container">
                <div class="intro">
                    <h2 class="text-center">Coming Course</h2>
                </div>
                <div class="row photos">
                    <c:forEach items="${comingCourseList}" var="comingCourse">
                        <div class="col-sm-6 col-md-4 col-lg-3 item">
                            <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                                <img class="img-fluid" style="width:220px;height:150px;" src=${comingCourse.course_cover_image_link}>
                            </a>
                            <label style="font-size:28px;padding-left:0px;">${comingCourse.course_name}</label>
                            <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal"
                                    data-target="#myModal" onclick="insertcourse(this)" value=${comingCourse.course_id}>Book</button>
                        </div>
                    </c:forEach>
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
    <div class="modal fade" role="dialog" tabindex="-1" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Book Course Form</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><strong>X</strong></span></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure book this course?</p>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="button" id="insertcourse">Confirm</button></div>
            </div>
        </div>
    </div>
</div>



<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<script src="js/Simple-Slider.js"></script>
<script src="js/theme.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="js/Dynamic-Table.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
<script src="js/Sidebar-Menu-1.js"></script>
<script src="js/Sidebar-Menu.js"></script>
<script src="js/Simple-Slider.js"></script>
<script src="js/sticky.js"></script>
<script src="js/studentPage.js"></script>

</body>
</html>
