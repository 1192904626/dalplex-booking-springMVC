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
        <div class="container"><a class="navbar-brand" href="index.html" style="font-size:29px;">Dalplex Booking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                    class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size:20px;"><strong>Course</strong>&nbsp;</a>
                        <div class="dropdown-menu" role="menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size:20px;"><strong>Court</strong>&nbsp;</a>
                        <div class="dropdown-menu" role="menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="font-size:20px;"><strong>Contact</strong></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="font-size:20px;"><strong>About</strong></a></li>
                </ul><span class="navbar-text actions"> <a href="#" class="login" style="font-size:20px;">Log In</a><a class="btn btn-light action-button" role="button" href="#" style="font-size:20px;background-color:#222222;">Sign Up</a></span></div>
        </div>
    </nav>
</div>
<div class="photo-gallery">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">My Course</h2>
        </div>
        <div class="row photos">
            <div class="col-sm-6 col-md-4 col-lg-3 offset-xl-0 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/yoga.jpg"></a><label style="font-size:28px;padding-left:0px;width:100%;">Yoga 101</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/swimming.jpg"></a><label style="font-size:28px;width:100%;">Swimming 101</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/boxing.jpg"></a><label style="font-size:28px;width:100%;">Boxing 101</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/basketball.jpg"></a><label style="font-size:28px;">Basketball</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
        </div>
    </div>
</div>
<div class="photo-gallery">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Coming Course</h2>
        </div>
        <div class="row photos">
            <div class="col-sm-6 col-md-4 col-lg-3 offset-xl-0 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/yoga.jpg"></a><label style="font-size:28px;padding-left:0px;width:100%;">Yoga 102</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/swimming.jpg"></a><label style="font-size:28px;width:100%;">Swimming 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/boxing.jpg"></a><label style="font-size:28px;width:100%;">Boxing 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/basketball.jpg"></a><label style="font-size:28px;width:100%;">Basketball 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="image-fluid delete-course" src="image/socor.jpg"></a><label style="font-size:28px;width:100%;">Soccor 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/baseball.jpg"></a><label style="font-size:28px;width:100%;">Baseball 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/badminton.jpg"></a><label style="font-size:28px;width:100%;">Badminton 102</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/tabletennis.jpg"></a><label style="font-size:28px;">Table Tennis</label><label style="font-size:19px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button class="btn btn-primary book-course" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal">Book</button>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="intro">
            <h2 class="text-center">My Court</h2>
        </div>
        <div class="row photos">
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/desk.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/basketball_court.jpg"></a><label style="font-size:28px;">Basketball 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/badminton_court.jpg"></a><label style="font-size:28px;">Badminton 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/loft.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/soccor_court.jpg"></a><label style="font-size:28px;">Soccor 1</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item"><a href="image/building.jpg" data-lightbox="photos"><image alt="#" class="image-fluid" src="image/table-tennis_court.jpg"></a><label style="font-size:28px;">Table Tennis Table</label><label style="font-size:19px;padding-left:0px;width:100%;">2018-07-17 5:00pm-6:00pm</label>
                <button
                        class="btn btn-danger" type="button" style="width:100%;" data-toggle="modal" data-target="#myModal2">Delete</button>
            </div>
        </div>
    </div>
</div><div class="container time-table">
    <h2 class="text-center" >Booking Court</h2>

</div>
<div class="footer-basic">
    <footer>
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Home</a></li>
            <li class="list-inline-item"><a href="#">Services</a></li>
            <li class="list-inline-item"><a href="#">About</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Dalplex booking system © 2017</p>
    </footer>
</div>
<div class="newsletter-subscribe">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Subscribe for our Newsletter</h2>
            <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
        </div>
        <form class="form-inline" method="post">
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Your Email"></div>
            <div class="form-group"><button class="btn btn-primary" type="submit">Subscribe </button></div>
        </form>
    </div>
</div><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

<div class="book-course-modal">
    <div role="dialog" tabindex="-1" class="modal fade" id="myModal2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Are you sure to delete?</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <p class="text-center text-muted">Deleted item can not be recovered.</p >
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button><button class="btn btn-primary" type="button">Delete</button></div>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Book Course Form</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label  class="col-sm-2 control-label"
                                    for="inputEmail3">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control"
                                       id="inputEmail3" placeholder="Email"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-2 control-label"
                                    for="inputStudentName">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       id="inputStudentName" placeholder="Name on ID"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-2 control-label"
                                    for="inputPhoneNumber">#Phone</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                       id="inputPhoneNumber" placeholder="Phone number"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <button class="btn btn-light" type="button" id = "sync_google_cal" data-dismiss="modal" data-toggle="modal" data-target="#google-modal">Sync with Google Calendar <i class="fab fa-google"></i></button>


                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button">Confirm</button></div>
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
<script src="bootstrap/js/bootstrap.min.js"></script>
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
<script type="text/javascript">
    // $("#sync_google_cal").click(function () {
    //     // console.log("google cal api");
    //     $.post("quickstart.php",{
    //
    //
    //
    //
    //         },
    //         function (data, status) {
    //             window.location.href="quickstart.php";
    //         });
    //
    // });
    $("#sync_google_cal").click(function(){
        $("#content-php").load("quickstart.php");
    });
</script>
</body>

</html>
