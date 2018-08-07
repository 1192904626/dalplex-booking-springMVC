<%--
  Created by IntelliJ IDEA.
  User: js
  Date: 2018-08-06
  Time: 1:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ForgotPassword</title>
    <link rel="stylesheet" href="css/bootstrapyiren.min.css" >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
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
                <%--<li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="/court/list" style="padding-right:32px;">Court</a>--%>
                <%--<div class="dropdown-menu" role="menu">--%>
                <%--<a class="dropdown-item"  href="/studentCourt/pages/tennis">tennis</a>--%>
                <%--<a class="dropdown-item"  href="/studentCourt/pages/basketball">Basketball</a>--%>
                <%--<a class="dropdown-item"  href="/studentCourt/pages/soccer">Soccer</a>--%>
                <%--<a class="dropdown-item"  href="/studentCourt/pages/common">Common</a>--%>
                <%--</div>--%>
                <%--</li>--%>
                <%--<li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="/course/list" style="padding-right:32px;">Class</a>--%>
                <%--<div class="dropdown-menu" role="menu">--%>
                <%--<a class="dropdown-item"  href="#">First Item</a>--%>
                <%--<a class="dropdown-item"  href="#">Second Item</a>--%>
                <%--<a class="dropdown-item"  href="#">Third Item</a>--%>
                <%--</div>--%>
                <%--</li>--%>
                <%--<li class="nav-item" role="presentation"><a class="nav-link" href="/login">Sign in</a></li>--%>
                <%--<li class="nav-item" role="presentation"><a class="nav-link active" href="/signup">Sign up</a></li>--%>
            </ul>
        </div>
    </div>
</nav>

<main class="page hire-me-page">
    <section class="portfolio-block hire-me">
        <div class="container" style="margin-top:-40px;margin-bottom:-20px;">
            <div class="heading">
                <h2>Reset Password</h2>
                <hr>
                <h4 class="loginError">${errorMsg}</h4>
            </div>
        </div>

                <form id="signupform" method="post" action="/forgotPassword">

                    <div class="form-group">
                        <label for="email111">Email</label>
                        <input class="form-control form-control-lg item" placeholder="Email" type="email" id="email111" name="email" required>
                    </div>

                    <div class="form-group">
                        <label  for="phone">Phone</label>
                        <input  class="form-control form-control-lg item" type="text" placeholder="Phone Number" id="phone" name="phone" required/>
                    </div>

                    <div class="form-group">
                        <label  for="student_name">Username</label>
                        <input  class="form-control form-control-lg item" type="text" placeholder="Username" id="student_name" name="student_name" required/>
                    </div>

                    <div class="form-group">
                        <label  for="newpwd">Password</label>
                        <input  class="form-control form-control-lg item" type="password" placeholder="New Password" id="newpwd" name="newpwd"
                                pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{8,}"
                                title="At least 8 digits. Must contain a lowercase letter, a uppercase letter and a number." required/>
                    </div>

                    <button onsubmit="successMsg()" class="btn btn-primary btn-block btn-lg" type="submit" id="signup" >Submit</button>

                </form>
        <div class="text-center">
            <a href="#" onclick="adminMsg()" style="margin-top:-1px;">Can't find your account?</a><br>
        </div>
        <script>
            function successMsg() {
                alert("Password successfully reset !")
            }
        </script>


        <script>
            function adminMsg() {
                alert("We are here to help! Please contact CustomerService@dorabmon.org or call (800)-8858-8888")
            }
        </script>


    </section>
</main>




</body>
</html>