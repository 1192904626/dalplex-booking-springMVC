$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });
});
// pass value to modal
function deletecourse(element) {
    var courseid = element.getAttribute('value');
    $("#deletecourse").val(courseid);
};

$("#deletecourse").click(function(){
    //get id
    var courseid = $("#deletecourse").val();
    $.ajax({
        url:"/course/"+courseid,
        type: 'DELETE',
        success: function (data, status){
            if(status == "success"){
                location.reload();
            } else {
                alert("Delete course " + data);
            };

        }
    })
});

// edit course
function editcourse(element) {
    var courseid = element.getAttribute('value');
    // get course based on id
    $.ajax({
        url:"/course/"+ courseid,
        type: "GET",
        success: function (course, status) {
            if(course != null){
                $("#edit_course_id").attr('value', course.course_id);
                $("#edit_course_name").attr('value', course.course_name);
                $("#edit_course_category").attr('value', course.course_category);
                $("#edit_course_start").attr('value', course.course_start_date);
                $("#edit_course_end").attr('value', course.course_end_date);
                $("#edit_course_instructor").attr('value', course.course_instructor)
                $("#edit_course_time_start").attr('value', course.course_start_time);
                $("#edit_course_time_end").attr('value', course.course_end_time);
                $("#edit_course_cover_image_link").attr('value', course.course_cover_image_link);
            }
        }
    });









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