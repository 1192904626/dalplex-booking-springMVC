Date.prototype.toDateInputValue = (function() {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0,10);
});

$( document ).ready(function() {

    $('#date_id').val(new Date().toDateInputValue());

    var court_type = $("#court_type").val();

    $.ajax({
        url:"/studentCourt/" + court_type,
        type: 'GET',
        dataType: 'json',
        success: function (courtList, status){

            for(index in courtList){
                var court = courtList[index];
                $("#court_content").append(`<div class="col-md-6 col-lg-4">
                    <div class="project-card-no-image">
                        <input id="${court.courtId}" type="hidden" value="${court.courtId}"/>
                        <h3>${court.courtName}</h3>
                        <h4>${court.courtDescription}</h4>
                        <a class="btn btn-outline-primary btn-sm" role="button" href="#"
                           data-toggle="modal" data-target="#myModal2">Book now</a>
                        <div class="tags"><a href="#" style="color:rgb(14,160,255);">available</a></div>
                    </div>
                </div>`);

            }
        }
    });

});

//# sourceURL=court.js
