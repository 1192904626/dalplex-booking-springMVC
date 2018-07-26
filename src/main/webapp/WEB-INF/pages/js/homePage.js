$( document ).ready(function() {

    $.ajax({
        url:"/announcement/homePageList",
        type: 'GET',
        dataType: 'json',
        success: function (announcementList, status){

            $("#homeAnnouncement").html("");
            for(index in announcementList){
                var announcement = announcementList[index];
                $("#homeAnnouncement").append(`<strong> 
                                                <a onclick="showAnnouncement(this)" href="#" class="btn btn-default" value=${announcement.id} data-toggle="modal" data-target="#showAnnouncement">
                                                        ${announcement.title}
                                                </a>
                                                </strong><br/>`);


            }
        }
    });

});

function showAnnouncement(element) {
    var announcementid = element.getAttribute('value');

    $.ajax({
        url:"/announcement/admin/"+ announcementid,
        type: "GET",
        success: function (data, status) {

            if(status == "success"){
                $("#announcement_title").html(data.title);
                $("#announcement_validUntil").attr('value', data.validUntil);
                $("#announcement_content").html(data.content);
            }

        }
    });
};


//# sourceURL=homePage.js