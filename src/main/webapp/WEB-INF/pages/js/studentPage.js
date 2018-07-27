/*
 * Written by Ziyun Zhong
 */
    // pass value to modal

function deletecourse(element) {
        var courseid = element.getAttribute('value');
        $("#deletecourse").val(courseid);
    };
$("#deletecourse").click(function(){
    //get id
    var courseid = $("#deletecourse").val();
    $.ajax({
        url:"/student_page/"+courseid,
        type: 'GET',
        success: function (data, status){
            if(status == "success"){
                location.reload();
            };
        }
    })
});
function insertcourse(element) {
    var courseid = element.getAttribute('value');
    $("#insertcourse").val(courseid);
};
$("#insertcourse").click(function(){
    //get id
    var courseid = $("#insertcourse").val();
    $.ajax({
        url:"/student_page/"+courseid,
        type: 'POST',
        success: function (data, status){
            if(status == "success"){
                location.reload();
            };
        }
    })
});

