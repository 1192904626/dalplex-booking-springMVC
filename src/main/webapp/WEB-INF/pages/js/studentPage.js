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

function deleteCourt(element){

    var courtId = element.getAttribute('value');
    $("#delete_court_id").val(courtId);

}

function deleteCourtConfirm(){

    var court_id = $("#delete_court_id").val();
    $.ajax({
        url:"/studentCourt/courtBooking/"+court_id,
        type: 'DELETE',
        success: function (data, status){
            if(status == "success" && data.result == true){
                location.reload();
            };
        }
    });

}
