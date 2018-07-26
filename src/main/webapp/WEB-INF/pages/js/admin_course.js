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
                $("#edit_display_image").attr('src', course.course_cover_image_link);
            }
        }
    });


};

document.getElementById("upload_widget_opener").addEventListener("click", function() {
    cloudinary.openUploadWidget({
            cloud_name: 'dvbwoaqub',
            upload_preset: 'p6b4gfgx'},
        function(error, result)
        {
            console.log(error, result);
            image_url = result[0].url;
            console.log(image_url);
            $("#course_img").attr('src',image_url);
            $("#course_cover_image_link").attr('value',image_url);
        });
}, false);

document.getElementById("upload_widget_opener_edit").addEventListener("click", function() {
    cloudinary.openUploadWidget({
            cloud_name: 'dvbwoaqub',
            upload_preset: 'p6b4gfgx'},
        function(error, result)
        {
            console.log(error, result);
            image_url = result[0].url;
            console.log(image_url);
            $("#edit_display_image").attr('src',image_url);
            $("#edit_course_cover_image_link").attr('value',image_url);
        });
}, false);

