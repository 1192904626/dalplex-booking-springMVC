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

function searchCourts(){

    var keyword = $("#keyword_input").val();
    var param = {"keyword": keyword};

    $.ajax({
        url:"/court/search",
        dataType: "json",
        data: JSON.stringify(param),
        type: "POST",
        contentType:"application/json",
        success: function (courtList, status) {
            if(status == "success"){

                $("#court_list").html("");
                for(index in courtList){
                    var court = courtList[index];

                    $("#court_list").append(`
                        <tr>
                            <td>${court.courtName}</td>
                            <td>${court.courtType}</td>
                            <td>${court.courtCapacity}</td>
                            <td>${court.courtDescription}</td>
                            <td>
                                <a onclick="editcourt(this)" class="btn btn-default"
                                   value=${court.courtId} data-toggle="modal"
                                   data-target="#editCourseModal">
                                    <i class="material-icons">border_color</i>
                                </a>
                            </td>
                            <td>
                                <a onclick="deletecourt(this)" class="btn btn-danger" data-toggle="modal"
                                   href="#myModal" value=${court.courtId}>
                                    <em class="fa fa-trash">
                                    </em>
                                </a>
                            </td>
                        </tr>
                `);
                }
            }
        }
    });

}

$(document).keyup(function(event){
    if(event.keyCode ==13){
        searchCourts();
    }
});


//# sourceURL=admin_court.js