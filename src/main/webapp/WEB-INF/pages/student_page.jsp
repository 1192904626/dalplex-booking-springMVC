<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ziyunzhong
  Date: 2018-07-16
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home_page</title>
    <%--<link rel="stylesheet" href="css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="fonts/ionicons.min.css">--%>
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

                <li class="nav-item" ><a class="nav-link" href="/profile/edit">Welcome ${currentUser.student_name}</a></li>
                <li class="nav-item" ><a class="nav-link" href="/logout">Logout</a></li>

                <%--<li class="nav-item" ><a class="nav-link" href="/signup">Sign up</a></li>--%>
            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<br>
<section>
    <div class="photo-gallery">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">My Course</h2>
            </div>
            <div class="row photos">
                <c:forEach items="${studentCourseList}" var="studentCourse">
                    <div class="col-sm-6 col-md-4 col-lg-3 item">
                        <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                            <img  class="img-fluid" src=${studentCourse.course_cover_image_link}>
                        </a>
                        <label style="font-size:28px;padding-left:0px;">${studentCourse.course_name}</label>
                        <label style="font-size:19px;padding-left:0px;width:100%;">${studentCourse.course_start_date}</label>
                        <button class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2" onclick="deletecourse(this)" value=${studentCourse.course_id}>Delete</button>
                    </div>
                </c:forEach>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 offset-xl-0 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/yoga.jpg"></a><label style="font-size:28px;padding-left:0px;width:100%;">Yoga 101</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>


                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/swimming.jpg"></a><label style="font-size:28px;width:100%;">Swimming 101</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/boxing.jpg"></a><label style="font-size:28px;width:100%;">Boxing 101</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/basketball.jpg"></a><label style="font-size:28px;">Basketball</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="photo-gallery">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Coming Course</h2>
            </div>
            <div class="row photos">
                <%--<div class="col-sm-6 col-md-4 col-lg-3 offset-xl-0 item">--%>
                <%--<a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/yoga.jpg"></a>--%>
                <%--<label style="font-size:28px;padding-left:0px;width:100%;">Yoga 102</label>--%>
                <%--<label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>

                <c:forEach items="${comingCourseList}" var="comingCourse">
                    <div class="col-sm-6 col-md-4 col-lg-3 item">
                        <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                            <img  class="img-fluid" src=${comingCourse.course_cover_image_link}>
                        </a>
                        <label style="font-size:28px;padding-left:0px;">${comingCourse.course_name}</label>
                        <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal"  onclick="insertcourse(this)"   value=${comingCourse.course_id}>Book</button>
                    </div>
                </c:forEach>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/swimming.jpg"></a><label style="font-size:28px;width:100%;">Swimming 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/boxing.jpg"></a><label style="font-size:28px;width:100%;">Boxing 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/basketball.jpg"></a><label style="font-size:28px;width:100%;">Basketball 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="img-fluid delete-course" src="image/socor.jpg"></a><label style="font-size:28px;width:100%;">Soccor 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/baseball.jpg"></a><label style="font-size:28px;width:100%;">Baseball 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/badminton.jpg"></a><label style="font-size:28px;width:100%;">Badminton 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/tabletennis.jpg"></a><label style="font-size:28px;">Table Tennis</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>

</section>
<section>
    <div class="photo-gallery">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">My Court</h2>
            </div>
            <div class="row photos">
                <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/basketball_court.jpg"></image></a><label style="font-size:28px;">Basketball 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                    <button
                            class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
                </div>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/badminton_court.jpg"></a><label style="font-size:28px;">Badminton 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/soccor_court.jpg"></a><label style="font-size:28px;">Soccor 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>
                <%--<div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="img-fluid" src="image/table-tennis_court.jpg"></a><label style="font-size:28px;">Table Tennis Table</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>--%>
                <%--<button--%>
                <%--class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="photo-gallery">
        <div class="container time-table">
            <h2 class="text-center" >Booking Court</h2>
            <br>
            <h5 class="text-center">
                Contact us by Email: dalplexBooking@dorabmon.org
            </h5>

            <h5 class="text-center">
                Contact us by Phone: 902-888-2333
            </h5>
        </div>
    </div>

</section>

<section>

    <div class="newsletter-subscribe">
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


<%--<div class="footer-basic">--%>
<%--<footer>--%>
<%--<div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>--%>
<%--<ul class="list-inline">--%>
<%--<li class="list-inline-item"><a href="#">Home</a></li>--%>
<%--<li class="list-inline-item"><a href="#">Services</a></li>--%>
<%--<li class="list-inline-item"><a href="#">About</a></li>--%>
<%--<li class="list-inline-item"><a href="#">Terms</a></li>--%>
<%--<li class="list-inline-item"><a href="#">Privacy Policy</a></li>--%>
<%--</ul>--%>
<%--<p class="copyright">Dalplex booking system © 2017</p>--%>
<%--</footer>--%>
<%--</div>--%>
<%--<div class="newsletter-subscribe">--%>
<%--<div class="container">--%>
<%--<div class="intro">--%>
<%--<h2 class="text-center">Subscribe for our Newsletter</h2>--%>
<%--<p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>--%>
<%--</div>--%>
<%--<form class="form-inline" method="post">--%>
<%--<div class="form-group"><input class="form-control" type="email" name="email" placeholder="Your Email"></div>--%>
<%--<div class="form-group"><button class="btn btn-primary" type="submit">Subscribe </button></div>--%>
<%--</form>--%>
<%--</div>--%>
<%--</div><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">--%>

<div class="book-course-modal">
    <div role="dialog" tabindex="-1" class="modal fade" id="myModal2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Are you sure to delete?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <p class="text-center text-muted">Deleted item can not be recovered.</p >
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button><button class="btn btn-primary" type="button" id="deletecourse">Delete</button></div>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Book Course Form</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <p>Are you sure book this course?</p>
                    <%--<form class="form-horizontal" role="form">--%>
                        <%--<div class="form-group">--%>
                            <%--<label  class="col-sm-2 control-label"--%>
                                    <%--for="inputEmail3">Email</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<input type="email" class="form-control"--%>
                                       <%--id="inputEmail3" placeholder="Email"/>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                            <%--<label  class="col-sm-2 control-label"--%>
                                    <%--for="inputStudentName">Name</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<input type="text" class="form-control"--%>
                                       <%--id="inputStudentName" placeholder="Name on ID"/>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                            <%--<label  class="col-sm-2 control-label"--%>
                                    <%--for="inputPhoneNumber">#Phone</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<input type="text" class="form-control"--%>
                                       <%--id="inputPhoneNumber" placeholder="Phone number"/>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="form-group">--%>
                            <div class="col-sm-10">
                                <button class="btn btn-light" type="button" id = "sync_google_cal" data-dismiss="modal" data-toggle="modal" data-target="#google-modal">Sync with Google Calendar <i class="fab fa-google"></i></button>


                            </div>
                        </di>
                    </form>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="insertcourse">Confirm</button></div>
            </div>
        </div>

    </div>
    <div class="modal fade" id="google-modal" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Sign in to Google</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body"><div id="content-php"></div></div>
                <div class="modal-footer">
                    <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button">Confirm</button></div>
                </div>
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
<script type="text/javascript">
    // pass value to modal
    function deletecourse(element) {
        var courseid = element.getAttribute('value');
        $("#deletecourse").val(courseid);
    };
    $("#deletecourse").click(function(){
        //get id
        var courseid = $("#deletecourse").val();
        $.ajax({
            url:"/student_page/"+courseid,
            type: 'GET',
            success: function (data, status){
                if(status == "success"){
                    location.reload();
                };
            }
        })
    });
    function insertcourse(element) {
        var courseid = element.getAttribute('value');
        $("#insertcourse").val(courseid);
    };
    $("#insertcourse").click(function(){
        //get id
        var courseid = $("#insertcourse").val();
        $.ajax({
            url:"/student_page/"+courseid,
            type: 'POST',
            success: function (data, status){
                if(status == "success"){
                    location.reload();
                };
            }
        })
    });
</script>


</body>

</html>