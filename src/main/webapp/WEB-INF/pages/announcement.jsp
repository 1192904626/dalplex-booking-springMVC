<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    pageContext.setAttribute("basePath",basePath);

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=basePath%>" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Add Court</title>

    <link href="http://protostrap.com/Assets/gv/css/gv.bootstrap-form.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/toggle-menu.css">
    <!-- Font Awesome JS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<div>

    <div class="wrapper">
        <!-- Page Content Holder -->
        <div id="content">

            <div class="table-content parent">
                <div class="table-content" id="course_table">
                    <div class="row" >
                        <h2 class="text-center">Announcement Table</h2>
                        <button type="button" class="btn btn-primary add-button" name="add_course" data-toggle="modal" data-target="#addCourseModal">Add an Announcement</button>

                    </div>
                    <div class="row">
                        <div id="no-more-tables1" class="admin-table">
                            <table class="col-sm-12 table table-bordered table-striped table-condensed cf">
                                <thead class="cf">
                                <tr>
                                    <th>Announcement Title</th>
                                    <th>Announcement Content</th>
                                    <th>Valid Until</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${announcementList}" var="announcement">
                                    <tr>
                                        <td>${announcement.title}</td>
                                        <td>${announcement.content}</td>
                                        <td>${announcement.validUntil}</td>
                                        <td >
                                            <a onclick="editannouncement(this)" class="btn btn-default" value=${announcement.id} data-toggle="modal" data-target="#editCourseModal">
                                                <i class="material-icons" >border_color</i>
                                            </a>
                                        </td>
                                        <td >
                                            <a onclick="deleteannouncement(this)" class="btn btn-danger" data-toggle="modal" href="#myModal" value=${announcement.id}>
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
                <h4 class="modal-title">Add Announcement</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <form id = "add-course-form" class="form-horizontal" action="/announcement/list" method="post">
                <div class="modal-body">

                    <div class="form-group">
                        <label class="control-label col-sm-6" for="title">Title</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="title" placeholder="Enter title" name="title" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-6" for="validUntil">Valid until</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="validUntil"  name="validUntil" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-6" for="a_content">Content</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="a_content" placeholder="Say something" name="content" required>
                        </div>
                    </div>


                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn-primary" id="submit-course-form">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </form>
        </div>

    </div>
</div>

    <div class="modal fade" id="editCourseModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Announcement</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <form id = "edit-course-form" class="form-horizontal" action="/announcement/list" method="post">
                    <div class="modal-body">

                        <div class="form-group">
                            <label class="control-label col-sm-6" for="edit_title">Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_title" placeholder="Enter title" name="title" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="edit_validUntil">Valid until</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="edit_validUntil"  name="validUntil" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-6" for="edit_content">Content</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_content" placeholder="Say something" name="content" required>
                            </div>
                        </div>
                        <div class="form-group" style="display: none">
                            <label class="control-label col-sm-6" for="edit_id">Content</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="edit_id" placeholder="Say something" name="id" required>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-primary" id="submit-course-form_edit">Submit</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                    </div>
                </form>
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
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Cancel</button><button id="deleteannouncement" class="btn btn-primary" value="" type="button" onclick="deleteConfirm()">Delete</button></div>
        </div>
    </div>
</div>
</div>


</body>
<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

<script src="js/announcement.js"></script>
</html>
