$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });

    // admin check course
    $("#admin_check_course").on('click', function(){
        $("#court_list").remove();
        $("#course_list").remove();
        $("#welcomeadmin").remove();
        $("#annoncement_list").remove();
        $("#user_list").remove();

        $("#courtAndCourse").append("<div id=court_list><iframe style='border:none;'  width=90% height=500 src=/course/list></iframe></div>");
    });
    $("#admin_check_court").on('click', function(){
        $("#court_list").remove();
        $("#course_list").remove();
        $("#welcomeadmin").remove();
        $("#annoncement_list").remove();
        $("#user_list").remove();

        $("#courtAndCourse").append("<div id=course_list><iframe style='border:none;'  width=98% height=500 src=/court/list></iframe></div>");

    });
    // admin check user
    $("#admin_check_user").on('click', function(){
        $("#court_list").remove();
        $("#course_list").remove();
        $("#welcomeadmin").remove();
        $("#annoncement_list").remove();
        $("#user_list").remove();

        $("#courtAndCourse").append("<div id=user_list><iframe style='border:none;'  width=90% height=500 src=/adminUser/list></iframe></div>");
    });

    // admin_check_announcement
    $("#admin_check_announcement").on('click', function(){
        $("#court_list").remove();
        $("#course_list").remove();
        $("#annoncement_list").remove();
        $("#welcomeadmin").remove();
        $("#user_list").remove();

        $("#courtAndCourse").append("<div id=annoncement_list><iframe style='border:none;'  width=98% height=500 src=/announcement/list></iframe></div>");

    });

});
