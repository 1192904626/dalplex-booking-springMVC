$( document ).ready(function() {

    $.ajax({
        url:"/announcement/homePageList",
        type: 'GET',
        dataType: 'json',
        success: function (announcementList, status){

            $("#homeAnnouncement").html("");
            for(index in announcementList){
                var announcement = announcementList[index];
                $("#homeAnnouncement").append(`<a href="#">${announcement.title}</a><br/>`);


            }
        }
    });

});

//# sourceURL=homePage.js