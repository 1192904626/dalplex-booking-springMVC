<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
    <link rel="stylesheet" href="css/bootstrapyiren.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="fonts/ionicons.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
    <div class="container"><a class="navbar-brand logo" href="/">DalplexBooking</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navbarNav">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="/"
                                                            style="padding-left:30px;">Home</a></li>
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
        <form action="signup" id="signupform" method="post">
            <div class="form-group">
                <label for="student_name">Username</label>
                <input class="form-control form-control-lg item" placeholder="Username" type="text" id="student_name"
                       name="student_name"
                       pattern="^[a-zA-Z0-9_]+$" title="only letters and numbers are accepted.e.g.Tom2018"/>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input class="form-control form-control-lg item" placeholder="Email" type="email" id="email"
                       name="email" required/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control form-control-lg item" type="password" placeholder="Password" id="password"
                       name="password"
                       pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{8,}"
                       title="At least 8 digits. Must contain a lowercase letter, a uppercase letter and a number."
                       required/>
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input class="form-control form-control-lg item" type="tel" placeholder="Phone Number" id="phone"
                       name="phone" pattern="[0-9]{3}[0-9]{3}[0-9]{4}"
                       title="000-000-0000" required/>
            </div>

            <button class="btn btn-primary btn-block btn-lg" type="submit" id="signup">Sign Up</button>

        </form>
        <div class="text-center">
            <a href="/login" style="margin-top:-1px;">Already signed up? Login here.</a>
        </div>
    </section>
</main>
<footer class="page-footer">
    <div class="container">
        <div class="links"><a href="#">About</a><a href="#">Contact</a><a href="#">Terms of use</a></div>
        <div class="social-icons"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i
                class="icon ion-social-instagram-outline"></i></a><a href="#"><i
                class="icon ion-social-twitter"></i></a></div>
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

    });

</script>
</body>

</html>