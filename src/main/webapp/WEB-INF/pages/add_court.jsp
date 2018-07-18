<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add_court</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <div>
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-button" style="padding:6px;">
            <div class="container"><a class="navbar-brand" href="#" style="font-size:28px;font-family:Adamina, serif;">DalplexBooking</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1" style="padding:0px;margin-left:33px;">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="index.html" style="font-size:20px;font-family:Adamina, serif;color:rgb(4,4,4);">Home</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="court_list.html" style="font-size:20px;font-family:Adamina, serif;color:rgb(7,7,7);">Court</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="font-size:20px;font-family:Adamina, serif;color:rgb(7,7,7);">Course</a></li>
                    </ul><span class="navbar-text actions"> <a href="#" class="login" style="font-size:20px;font-family:Adamina, serif;width:auto;padding:9px;padding-top:7px;">Log In</a><a class="btn btn-light action-button" role="button" href="#" style="font-size:20px;font-family:Adamina, serif;">Sign Up</a></span></div>
    </div>
    </nav>
    </div>
    <form action="court_list.html" id="add_court_form" class="bootstrap-form-with-validation" style="background-color:#d2dde6;padding:137px;margin:auto;width:90%;font-family:Adamina, serif;font-size:20px;">
        <h2 class="text-center" style="width:100%;font-size:46px;padding:17px;font-family:Adamina, serif;">Add a New Court</h2>
        <div class="form-group">
            <label for="courtid" >Court ID</label>
            <input required id="courtid" class="form-control" type="text" name="text-input" style="width:100%;"></div>
        <div class="form-group"><label for="selectedCourt" >Court Type</label>
            <div class="dropdown" style="width:100%;">
                <button id="selectedCourt" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="padding-right:7px;height:42px;width:100%;background-color:rgb(63,181,197);margin:auto;">Basketball &nbsp; Court</button>
                <div
                    class="dropdown-menu" role="menu" style="text-align: center; width: 100%">
                    <span id="courttype" class="dropdown-item" role="presentation" >Basketball Court</span>
                    <span class="dropdown-item" role="presentation" >Football Court</span>
                    <span class="dropdown-item" role="presentation" >Badminton Court</span>
                </div>
        </div>
        </div>
        <div class="form-group"><label for="courtname" >Court Name</label>
            <input required class="form-control" id="courtname" type="text" name="text-input" style="width:100%;">
        </div>
        <div class="form-group"><label for="courtlocation" >Court Location</label>
            <input required class="form-control" id="courtlocation" type="text" name="text-input"  style="width:100%;"></div>
        <div class="form-group">
            <label for="socurschedul">Court Schedule</label>
            <div><span style="margin-right: 60px;width:40%;text-align: center">From:&nbsp;</span><span style="margin-left: 80px">To:</span></div>
            
            <input id="socurschedul" style="float: left; width:30%; margin-right: 20px;" required class="form-control" type="date" name="text-input" >
            <input style=" width:30%; margin-left: 30px;" required class="form-control" type="date" name="text-input">
        
        </div>
        <div class="form-group"><label for="textarea-input" >Description</label>
            <textarea class="form-control" name="textarea-input" id="textarea-input" style="width:100%;"></textarea></div>
        <div class="form-group" style="width:100%;padding:1px;margin:auto;margin-top:43px;">
            <button id="submitCourt" class="btn btn-primary" type="submit" style="width:100%;height:64px;padding:11px;margin:0px;font-size:20px;">SUBMIT</button>
        </div>
    </form>
    
    <script>
        // update drop down menu
        $(".dropdown-item").click(function(){
            var select_court = $(this).text();
            $("#selectedCourt").text(select_court);
        });

        // $("#submitCourt").click(function(){
        //     alert("jjj");
        // });
      
    
    </script>
</body>

</html>