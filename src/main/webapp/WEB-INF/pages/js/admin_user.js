$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });

});


// pass value to modal
function deleteuser(element) {
    var userid = element.getAttribute('value');
    $("#deleteuser").val(userid);
};


$("#deleteuser").click(function(){
    //get id
    var userid = $("#deleteuser").val();
    $.ajax({
        url:"/adminUser/"+userid,
        type: 'GET',
        success: function (data, status){
            if(status == "success"){
                location.reload();
            }else {
                alert("Delete court " + data);
            };
        }
    })
});



function edituser(element) {
    var userid = element.getAttribute('value');

    $.ajax({
        url:"/adminUser/list/"+ userid,
        type: "GET",
        success: function (data, status) {
            if(status == "success"){
                $("#email").attr('value', data.email);
                $("#membership_start_date").attr('value', data.membership_start_date);
                $("#membership_day").attr('value', data.membership_day);
                $("#add-user-form").attr('action', '/adminUser/list/' + data.student_id);
            }
        }
    });
};
