<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: yiren
  Date: 2018-07-17
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                        <a class="dropdown-item" href="badminton.html">Badminton</a>
                        <a class="dropdown-item"  href="">Basketball</a>
                        <a class="dropdown-item"  href="">Football</a></div>
                </li>
                <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="padding-right:32px;">Classes&nbsp;</a>
                    <div class="dropdown-menu" role="menu"><a class="dropdown-item"  href="#">First Item</a><a class="dropdown-item"  href="#">Second Item</a><a class="dropdown-item"  href="#">Third Item</a></div>
                </li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="">Sign in</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link active" href="signup.html">Sign up</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page hire-me-page">
    <section class="portfolio-block hire-me">
        <div class="container" style="margin-top:-40px;margin-bottom:-20px;">
            <div class="heading">
                <h2>Sign up</h2>
            </div>
        </div>
        <%--@elvariable id="user" type=""--%>
        <form action="signup" id="signupform" method="post">
            <div class="form-group">
                <label for="student_name">Username</label>
                <input class="form-control form-control-lg item" placeholder="Username" type="text" id="student_name" name="student_name"
                       pattern="^[a-zA-Z0-9_]+$" title="only letters and numbers are accepted.e.g.Tom2018"/>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input  class="form-control form-control-lg item" placeholder="Email" type="email" id="email" name="email" />
            </div>
            <div class="form-group">
                <label  for="password">Password</label>
                <input  class="form-control form-control-lg item" type="password" placeholder="Password" id="password" name="password"
                       pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{8,}"
                       title="At least 8 digits. Must contain a lowercase letter, a uppercase letter and a number."/>
            </div>
            <button class="btn btn-primary btn-block btn-lg" type="submit" id="signup">Sign Up</button>
            <a href="#" style="margin-top:-1px;">Already signed up? Login here.</a>
        </form>
    </section>
</main>
<footer class="page-footer">
    <div class="container">
        <div class="links"><a href="#">About</a><a href="#">Contact</a><a href="#">Terms of use</a></div>
        <div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-instagram-outline"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a></div>
    </div>
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>

<script type="text/javascript">

    $("#email111").blur(function () {
        var email = $("#email111").val();
        var regex = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        //if ()
    });

    $("#signup").click(function () {
        var name = $("#name").val();
        var email = $("#email111").val();
        var password = $("#password").val();

        // if (name != "" && email != "" && password != ""){
        //
        //     window.location.href='index.html';
        //     alert("Redirecting...");
        // }else {
        //     alert("All fields must bu filled");
        // }
        // $.post("index.html",
        //     {
        //
        //     },
        // function (data, status) {
        //     window.location.href='index.html';
        //
        // })

    });

</script>
</body>

</html>