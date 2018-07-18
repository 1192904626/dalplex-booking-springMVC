<%--
  Created by IntelliJ IDEA.
  User: ziyunzhong
  Date: 2018-07-15
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Add Court</title>

    <link href="http://protostrap.com/Assets/gv/css/gv.bootstrap-form.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../css/toggle-menu.css">
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
</head>
<body>
<div>

    <div class="wrapper">
        <!-- Page Content Holder -->
        <div id="content">

            <div class="table-content parent">
                <div class="table-content" id="course_table">
                    <div class="row" >
                        <h2 class="text-center">Court Table</h2>
                        <button type="button" class="btn btn-primary add-button" name="add_course" data-toggle="modal" data-target="#addCourseModal">Add a court</button>

                    </div>
                    <div class="row">
                        <div id="no-more-tables1" class="admin-table">
                            <table class="col-sm-12 table table-bordered table-striped table-condensed cf">
                                <thead class="cf">
                                <tr>
                                    <th>Court Name</th>
                                    <th>Court Type</th>
                                    <th>Capacity</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${courtList}" var="court">
                                    <tr>
                                        <td>${court.courtName}</td>
                                        <td>${court.courtTpye}</td>
                                        <td>${court.courtCapacity}</td>
                                        <td >
                                            <a onclick="editcourt(this)" class="btn btn-default" value=${court.courtId}>
                                                <i class="material-icons" >border_color</i>
                                            </a>
                                        </td>
                                        <td >
                                            <a onclick="deletecourt(this)" class="btn btn-danger" data-toggle="modal" href="#myModal" value=${court.courtId}>
                                                <em class="fa fa-trash">
                                                </em>
                                            </a>
                                        </td>

                                        <%--<th>--%>
                                            <%--<button type="button" class="btn btn-danger delete">Update</button>--%>
                                            <%--<button type="button" class="btn btn-danger delete">Delete</button>--%>
                                        <%--</th>--%>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!-- Modal -->
    <div class="modal fade" id="addCourseModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Court</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <form id = "add-course-form" class="form-horizontal" action="/action_page.php" method="post">
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="court_name">Court Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="court_name" placeholder="Enter court name" name="court_name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="court_type">Court Type</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="court_type"  name="course_start" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="capacity">Capacity</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="capacity" placeholder="capacity" name="capacity" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="description">Description</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="description" placeholder="description" name="description" required>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn-primary" id="submit-course-form">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>

        </div>
    </div>

</div>

<div id="popup"><div role="dialog" tabindex="-1" class="modal fade" id="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Are you sure to delete?</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p class="text-center text-muted">Deleted court can not be recovered.</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button><button id="deletecourt" class="btn btn-primary" value="" type="button">Delete</button></div>
        </div>
    </div>
</div>
</div>



<script type="text/javascript">
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
            $(this).toggleClass('active');
        });

    });
    // pass value to modal
    function deletecourt(element) {
      var courtid = element.getAttribute('value');
        $("#deletecourt").val(courtid);
    };

    $("#deletecourt").click(function(){
        //get id
        var courtid = $("#deletecourt").val();
        $.ajax({
            url:"/court/"+courtid,
            type: 'GET',
            success: function (data, status){
                if(status == "success"){
                    location.reload();
                };
            }
        })
    });

    function editcourt(element) {
        var courtid = element.getAttribute('value');
        alert("court id is: " + courtid);
    };




    $("#submit-course-form").click(function () {
        var course_name = $("#course_name").val();
        var capacity = $("#capacity").val();
        var course_start = $("#course_start").val();
        var course_end = $("#course_end").val();
        var course_time_start = $("#course_time_start").val();
        var course_time_end = $("#course_time_end").val();
        var course_day_1 = document.getElementById("course_day_1").checked;
        var course_day_2 = document.getElementById("course_day_2").checked;
        var course_day_3 = document.getElementById("course_day_3").checked;
        var course_day_4 = document.getElementById("course_day_4").checked;
        var course_day_5 = document.getElementById("course_day_5").checked;
        if ( course_name=="" || capacity=="" || course_start=="" || course_end=="" || course_time_start=="" || course_time_end=="") {
            if (course_day_1==false && course_day_2==false || course_day_3==false || course_day_3==false || course_day_4==false || course_day_5==false) {
                alert("Can not have empty value")
            }
        } else {
            $('#addCourseModal').modal('toggle');
            bootbox.alert("Successfully Added");
//            pass json object, all form value here
            $.post ("a.php",{
                    name : course_name,
                    capacity: capacity
//              More variable here
                },
                function (data, status) {
                    window.location.href="";
                });
        }
    });
    $(".btn.btn-danger.delete").click(function (s) {
        s.preventDefault()
        bootbox.confirm({
            message: "Are you sure",
            buttons: {
                confirm: {
                    label: 'Yes',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'No',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {
                if (result == true) {
                    bootbox.alert("Successfully Delete");
                }
//                console.log('This was logged in the callback: ' + result);
            }
        });  });
</script>

</body>

</html>
