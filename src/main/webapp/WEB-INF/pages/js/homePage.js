$( document ).ready(function() {

    $.ajax({
        url:"/announcement/homePageList",
        type: 'GET',
        dataType: 'json',
        success: function (announcementList, status){

            $("#homeAnnouncement").html("");
            for(index in announcementList){
                var announcement = announcementList[index];
                $("#homeAnnouncement").append(`<strong><a href="#">${announcement.title}</a></strong><br/>`);


            }
        }
    });

});

//# sourceURL=homePage.js