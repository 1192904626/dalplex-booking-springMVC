<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Add Court</title>

    <link href="https://protostrap.com/Assets/gv/css/gv.bootstrap-form.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../css/toggle-menu.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
            integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
            crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
            integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
            crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div>

    <div class="wrapper">
        <!-- Page Content Holder -->
        <div id="content">

            <div class="table-content parent">
                <div class="table-content" id="course_table">
                    <div class="row">
                        <h2 class="text-center">Course Table</h2>
                        <button type="button" class="btn btn-primary add-button" name="add_course" data-toggle="modal"
                                data-target="#addCourseModal">Add a course
                        </button>

                    </div>
                    <div class="row">
                        <div id="no-more-tables1" class="admin-table">
                            <table class="col-sm-12 table table-bordered table-striped table-condensed cf">
                                <thead class="cf">
                                <tr>
                                    <th>Course Name</th>
                                    <th>Capacity</th>
                                    <th>Course Start</th>
                                    <th>Course End</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${courseList}" var="course">
                                    <tr>
                                        <td>${course.course_name}</td>
                                        <td>${course.course_category}</td>
                                        <td>${course.course_start_date}</td>
                                        <td>${course.course_end_date}</td>
                                        <td>
                                            <a onclick="editcourse(this)" class="btn btn-default"
                                               value=${course.course_id} data-toggle="modal"
                                               data-target="#editCourseModal">
                                                <i class="material-icons">border_color</i>
                                            </a>
                                        </td>
                                        <td>
                                            <a onclick="deletecourse(this)" class="btn btn-danger" data-toggle="modal"
                                               href="#myModal" value=${course.course_id}>
                                                <em class="fa fa-trash">
                                                </em>
                                            </a>
                                        </td>
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
            <div class="modal-content" style="width: 200%; margin-left: -50%">
                <div class="modal-header">
                    <h4 class="modal-title">Add Course</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form id="add-course-form" class="form-horizontal" action="/course/list" method="POST">
                    <div class="modal-body">
                        <div id="add-form-left" style="width: 50%;float: left">
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_name">Course Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="course_name"
                                           placeholder="Enter course name"
                                           name="course_name" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_category">Category</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="course_category"
                                           placeholder="Select course type" name="course_category" list="team_list"
                                           required>
                                    <datalist id="team_list">
                                        <option>Soccer</option>
                                        <option>Basketball</option>
                                        <option>Swimming</option>
                                        <option>Yoga</option>
                                    </datalist>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_start">Course Start</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="course_start" name="course_start_date"
                                           required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_end">Course End</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="course_end" name="course_end_date"
                                           required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_instructor">Course Instructor</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="course_instructor"
                                           placeholder="Enter Instructor name" name="course_instructor" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_time_start">Course time start</label>
                                <div class="col-sm-10">
                                    <input type="time" class="form-control" id="course_time_start"
                                           name="course_start_time"
                                           required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_time_end">Course time end</label>
                                <div class="col-sm-10">
                                    <input type="time" class="form-control" id="course_time_end" name="course_end_time"
                                           required>
                                </div>
                            </div>
                        </div>
                        <div id="add-form-right" style="width:50%;float: right;">
                            <%--https://res.cloudinary.com/dirbnqgl0/image/upload/v1530819678/course_cover/socor.jpg--%>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="course_cover_image_link">Course Cover
                                    Image</label>
                                <img id="course_img"
                                     src="http://res.cloudinary.com/dvbwoaqub/image/upload/v1532616971/p1c2irrmcmb7knjthpsx.jpg"
                                     alt="profile" width="90%">
                            </div>
                            <div class="form-group">
                                <a href="#" id="upload_widget_opener">Upload an image</a>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10" style="display: none">
                                    <input type="text" class="form-control" id="course_cover_image_link"
                                           name="course_cover_image_link">
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-primary" id="submit_course_form">Submit</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                    </div>
                </form>

            </div>

        </div>
    </div>

    <div class="modal fade" id="editCourseModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" style="width: 200%; margin-left: -50%">
                <div class="modal-header">
                    <h4 class="modal-title" id="modal_title_edit">Edit Course</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <form id="edit_course_form" class="form-horizontal" action="/course/update" method="post">

                    <div class="modal-body">
                        <div id="edit-form-left" style="width: 50%;float: left">
                            <div class="form-group" style="display: none">
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="edit_course_id" name="course_id"
                                           required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_name">Course Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_course_name"
                                           placeholder="Enter course name" name="course_name" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_category">Category</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_course_category"
                                           placeholder="Select course type" name="course_category" list="edit_team_list"
                                           required>
                                    <datalist id="edit_team_list">
                                        <option>Soccer</option>
                                        <option>Basketball</option>
                                        <option>Swimming</option>
                                        <option>Yoga</option>
                                    </datalist>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_start">Course Start</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="edit_course_start"
                                           name="course_start_date"
                                           required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_end">Course End</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="edit_course_end" name="course_end_date"
                                           required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_instructor">Course
                                    Instructor</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="edit_course_instructor"
                                           placeholder="Enter Instructor name" name="course_instructor" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_time_start">Course time
                                    start</label>
                                <div class="col-sm-10">
                                    <input type="time" class="form-control" id="edit_course_time_start"
                                           name="course_start_time" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_time_end">Course time end</label>
                                <div class="col-sm-10">
                                    <input type="time" class="form-control" id="edit_course_time_end"
                                           name="course_end_time"
                                           required>
                                </div>
                            </div>
                        </div>
                        <%--https://res.cloudinary.com/dirbnqgl0/image/upload/v1530819678/course_cover/socor.jpg--%>
                        <div id="edit-form-right" style="width:50%;float: right;">
                            <div class="form-group">
                                <label class="control-label col-sm-6" for="edit_course_cover_image_link">Course Cover
                                    Image</label>
                                <img id="edit_display_image" class="img-fluid" src="#" alt="image for class">
                            </div>
                            <div class="form-group">
                                <a href="#" id="upload_widget_opener_edit">Upload an image</a>
                            </div>
                            <div class="col-sm-10" style="display: none">

                                <input type="text"
                                       id="edit_course_cover_image_link" name="course_cover_image_link" value="#">
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="submit-course-_edit">Submit</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                    </div>
                </form>
            </div>

        </div>
    </div>

</div>

<div id="popup">
    <div role="dialog" tabindex="-1" class="modal fade" id="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Are you sure to delete?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <p class="text-center text-muted">Deleted course can not be recovered.</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button>
                    <button id="deletecourse" value="" class="btn btn-primary" type="button">Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
<%--Cloudinary--%>
<script src="//widget.cloudinary.com/global/all.js" type="text/javascript"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>


<script src="../js/admin_course.js"></script>


</body>

</html>
