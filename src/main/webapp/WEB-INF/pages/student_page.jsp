<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home_page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="css/Footer-Basic.css">
    <link rel="stylesheet" href="css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/bootstrapyiren.min.css">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <link rel="stylesheet" href="fonts/font-awesome.min.css">
    <link rel="stylesheet" href="css/Newsletter-Subscription-Form.css">
</head>

<body>


<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container">
        <a class="navbar-brand logo" href="/">DalplexBooking</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">

                <li class="nav-item"><a class="nav-link" href="/classes">Class</a></li>

                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown"
                                        aria-expanded="false" href="#" style="padding-right:32px;">Courts</a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" href="/studentCourt/pages/tennis">Tennis</a>
                        <a class="dropdown-item" href="/studentCourt/pages/basketball">Basketball</a>
                        <a class="dropdown-item" href="/studentCourt/pages/soccer">Soccer</a>
                        <a class="dropdown-item" href="/studentCourt/pages/common">Common</a>
                    </div>
                </li>

                <li class="nav-item"><a class="nav-link" href="/profile/edit">Edit Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>

            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h3 class="text-center"><strong>Welcome ${currentUser.student_name} !</strong></h3>
<section>
    <div class="photo-gallery">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">My Course</h2>
            </div>
            <div class="row photos">
                <c:forEach items="${studentCourseList}" var="studentCourse">
                    <div class="col-sm-6 col-md-4 col-lg-3 item" style="margin-top: 10px">
                        <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                            <img class="img-fluid" style="width:220px;height:150px;"
                                 src=${studentCourse.course_cover_image_link}>
                        </a>
                        <label style="font-size:28px;padding-left:0px;">${studentCourse.course_name}</label>
                        <label style="font-size:19px;padding-left:0px;width:100%;">${studentCourse.course_start_date}</label>
                        <button class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal"
                                data-target="#myModal2" onclick="deletecourse(this)" value=${studentCourse.course_id}>
                            Delete
                        </button>
                    </div>
                </c:forEach>
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
                <c:forEach items="${studentCourtList}" var="studentCourt">
                    <div class="col-sm-6 col-md-4 col-lg-3 item">
                        <a style="pointer-events: none" href="image/desk.jpg" data-lightbox="photos">
                            <img style="width:220px;height:150px;" class="img-fluid"
                                 src="https://res.cloudinary.com/dirbnqgl0/image/upload/v1531855119/basketball_court.jpg">
                        </a>
                        <label style="font-size:28px;padding-left:0px;">${studentCourt.courtName}</label>
                        <p>${studentCourt.courtDescription}<p>
                        <p>${studentCourt.book_time}<p>
                        <c:choose>
                        <c:when test="${studentCourt.is_expired}">
                        <p><font color="red">Expired</font>
                        <p>
                            </c:when>
                            <c:otherwise>
                        <p><font color="green">Valid</font>
                        <p>
                            </c:otherwise>
                            </c:choose>
                            <button class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal"
                                    data-target="#myModal3" onclick="deleteCourt(this)"
                                    value=${studentCourt.book_court_id}>Delete
                            </button>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<br>
<br>
<br>
<br><br>
<br>
<br>
<br>

<section>
    <div class="photo-gallery">
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
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                </div>
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


<div class="book-course-modal">

    <div role="dialog" tabindex="-1" class="modal fade" id="myModal3">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"  style="background-color: #0ea0ff">
                    <h4>Are you sure to delete?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">x</span></button>
                </div>
                <div class="modal-body">
                    <p class="text-center text-muted">Deleted item can not be recovered.</p>
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="delete_court_id" value=""/>
                    <button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="button" onclick="deleteCourtConfirm()">Delete</button>
                </div>
            </div>
        </div>
    </div>


    <div role="dialog" tabindex="-1" class="modal fade" id="myModal2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"  style="background-color: #0ea0ff">
                    <h4>Are you sure to delete?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">x</span></button>
                </div>
                <div class="modal-body">
                    <p class="text-center text-muted">Deleted item can not be recovered.</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-primary" type="button" id="deletecourse">Delete</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"  style="background-color: #0ea0ff">
                    <h4>Book Course Form</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">x</span></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure book this course?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="button" id="insertcourse">Confirm</button>
                </div>
            </div>
        </div>

    </div>
    <div class="modal fade" id="google-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Sign in to Google</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <div id="content-php"></div>
                </div>
                <div class="modal-footer">
                    <div class="modal-footer">
                        <button class="btn btn-light" type="button" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" type="button">Confirm</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>
<script src="js/DashBoard-light-boostrap.js"></script>
<script src="js/sticky.js"></script>
<script src="js/studentPage.js"></script>


</body>

</html>