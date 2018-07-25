Date.prototype.toDateInputValue = (function() {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0,10);
});

function bookNowTrigger(element){

    var elementValue = element.getAttribute('value');
    var valueArr = elementValue.split("#");

    var court_id = valueArr[0];
    var court_title  = valueArr[1];

    $("#book_btn_id").val(court_id);

    var court_type = $("#court_type").val();
    var param = {"court_id": court_id, "date": $("#date_id").val()};

    $.ajax({
        url:"/studentCourt/showValidPeriods",
        type: 'POST',
        async:false,
        dataType: 'json',
        contentType:"application/json",
        data:JSON.stringify(param),
        success:function(validPeriodList, status){

            $("#modal-body-id").html("");

            if(validPeriodList.length == 0)
            {
                $("#modal-body-id").append("<span>All periods are not available in this court!</span>");
                return;
            }

            for(index in validPeriodList){
                var period = validPeriodList[index];
                $("#modal-body-id").append(`<input type="radio" name="radio" id="radio${index}" value="${period}" />${period}<br/>`);
            }

            $('input[type=radio][name=radio]').change(function() {

                $("#book_btn_id").prop("disabled", false);
                $("#book_btn_id").attr('class', 'btn btn-primary');

            });
        }
    });

    $("#id_h4").html("");
    $("#id_h4").append(court_title);

    loadAllCourts();

}

function courtBookTrigger()
{
    if($("input[type='radio'][name='radio']:checked").length == 0)
    {
        return;
    }

    var period = $('input[type="radio"][name="radio"]:checked').val();
    var court_id = $("#book_btn_id").val();
    var param = {"court_id": court_id, "date": $("#date_id").val(), "payload":period};

    $.ajax({
        url:"/studentCourt/courtBooking",
        type: 'POST',
        dataType: 'json',
        async:false,
        contentType:"application/json",
        data:JSON.stringify(param),
        success:function(jsonResult, status){

            if(jsonResult.result == true)
            {
                $("#modal-body-id").html("");
                $("#modal-body-id").append("<span>Court Booking Successfully, you will receive an email including the detail information</span>");
            }
            else{

                $("#modal-body-id").html("");
                $("#modal-body-id").append("<span>Court Booking Failure for certain reason, please contact administrator</span>");
            }

            $("#book_btn_id").prop("disabled", true);

        }
    });

    loadAllCourts();
}

function loadAllCourts(){

    var court_type = $("#court_type").val();
    var param = {"court_type": court_type, "date": $("#date_id").val()};

    $.ajax({
        url:"/studentCourt/listCourts",
        type: 'POST',
        dataType: 'json',
        async:false,
        contentType:"application/json",
        data:JSON.stringify(param),
        success:function(courtList, status){

            $("#court_content").html("");

            for(index in courtList){
                var court = courtList[index];

                if(court.remains > 0)
                {
                    $("#court_content").append(`<div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image">
                            <h3>${court.courtName}</h3>
                            <h4>${court.courtDescription}</h4>
                            <a class="btn btn-outline-primary btn-sm" role="button" href="#"
                               data-toggle="modal" data-target="#myModal2" value="${court.courtId}#${court.courtName}" onclick="bookNowTrigger(this)">Book now</a>
                            <div class="tags"><a href="#" style="color:rgb(14,160,255);">available</a></div>
                        </div>
                    </div>`);
                }
                else
                {
                    $("#court_content").append(`<div class="col-md-6 col-lg-4">
                        <div class="project-card-no-image project-card-no-image-red">
                        <input id="${court.courtId}" type="hidden" value="${court.courtId}"/>
                        <h3>${court.courtName}</h3>
                        <h4>${court.courtDescription}</h4>
                        <a role="button" href="#" style="color:rgb(211,211,211);" value="${court.courtId}">Book now</a>
                    <div class="tags"><a href="#" style="color:rgb(239,84,84);">Full</a></div>
                    </div>
                    </div>`);
                }


            }
        }
    });

}

$( document ).ready(function() {

    var newDate = new Date(new Date().getTime() + 24 * 60 * 60 * 1000).toDateInputValue();

    $('#date_id').val(newDate);
    $('#date_id').attr("min", newDate);

    loadAllCourts();
    document.getElementById("date_id").addEventListener("change", loadAllCourts);

});

function contactInfo() {
    var info = confirm("Contact us via Email: DalplexBookingInfo@dorabmon.org");
    return info;
}

//# sourceURL=court.js
