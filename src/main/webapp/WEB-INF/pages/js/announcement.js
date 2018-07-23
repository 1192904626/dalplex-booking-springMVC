$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });

});
// pass value to modal
function deleteannouncement(element) {
    var announcementid = element.getAttribute('value');
    $("#deleteannouncement").val(announcementid);
};

function deleteConfirm(){
    //get id
    var announcementid = $("#deleteannouncement").val();
    $.ajax({
        url:"/announcement/"+announcementid,
        type: 'DELETE',
        dataType: 'json',
        success: function (data, status){
            if(data.result == true){

                location.reload();
            }
            else{
                alert(data.errorMessage);
            }
        }
    });
}



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
    });

});


// Date.prototype.toDateInputValue = (function() {
//     var local = new Date(this);
//     local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
//     return local.toJSON().slice(0,10);
// });
//
//
// document.getElementById("validUntil").value=new Date().toDateInputValue();



function editannouncement(element) {
    var announcementid = element.getAttribute('value');

    $.ajax({
        url:"/announcement/admin/"+ announcementid,
        type: "GET",
        success: function (data, status) {
            if(status == "success"){
                $("#edit_title").attr('value', data.title);
                $("#edit_validUntil").attr('value', data.validUntil);
                $("#edit_content").attr('value', data.content);
                $("#edit_id").attr('value', data.id);
                $("#edit-course-form").attr('action', '/announcement/admin/' + data.courtId);
            }
        }
    });
};


//# sourceURL=announcement.js