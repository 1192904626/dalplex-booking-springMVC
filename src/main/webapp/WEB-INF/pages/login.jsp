<%--
  Created by IntelliJ IDEA.
  User: ziyunzhong
  Date: 2018-07-13
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
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
<html>
<head>
    <base href="<%=basePath%>" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DalplexBooking</title>
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
                <h2>Sign in</h2>
                <hr>
                <h4 class="loginError">${loginError}</h4>

            </div>
        </div>
        <form id="signupform" action="/login" method="post">

            <div class="form-group">
                <label for="email111">Email</label>
                <input class="form-control form-control-lg item" placeholder="Email" type="email" id="email111" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control form-control-lg item" type="password" placeholder="Password" id="password" name="password" required
                       pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{8,}"
                       title="At least 8 digits. Must contain a lowercase letter, a uppercase letter and a number.">
            </div>
            <button class="btn btn-primary btn-block btn-lg" type="submit" id="signup">Sign In</button>

        </form>
        <div class="text-center">
            <a href="/signup" style="margin-top:-1px;">Don't have an account? Sign up here.</a><br>
            <a href="/forgotPassword" style="margin-top:-1px;">Forgot password? Click here.</a>
        </div>

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


</body>

</html>