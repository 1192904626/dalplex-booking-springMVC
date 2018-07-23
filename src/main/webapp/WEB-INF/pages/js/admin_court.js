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
            }else {
                alert("Delete court " + data);
            };
        }
    })
});





function editcourt(element) {
    var courtid = element.getAttribute('value');

    $.ajax({
        url:"/court/admin/"+ courtid,
        type: "GET",
        success: function (data, status) {
            if(status == "success"){
                $("#court_name_edit").attr('value', data.courtName);
                $("#court_type_edit").attr('value', data.courtType);
                $("#capacity_edit").attr('value', data.courtCapacity);
                $("#description_edit").attr('value', data.courtDescription);
                $("#edit-court-form").attr('action', '/court/admin/' + data.courtId);
                $("#noneId").attr('value', + data.courtId );
            }
        }
    });
};