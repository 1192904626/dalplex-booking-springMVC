
function loadAnnouncements(pageNum){

    if(pageNum == 0)
        return;

    var offset = (pageNum - 1)*5

    $.ajax({
        url:"/announcement/homePageList/"+offset,
        type: 'GET',
        dataType: 'json',
        async:false,
        contentType:"application/json",
        success: function (announcementList, status){

            if(announcementList.length == 0){
                return;
            }

            $("#homeAnnouncement").html("");
            for(index in announcementList){
                var announcement = announcementList[index];
                $("#homeAnnouncement").append(`<strong> 
                                                <a onclick="showAnnouncement(this)" href="#" class="btn btn-default" value=${announcement.id} data-toggle="modal" data-target="#showAnnouncement">
                                                        ${announcement.title}
                                                </a>
                                                </strong><br/>`);


            }
            $("#homeAnnouncement").append(`<p><strong>
                                                <a class="btn btn-default" onclick="loadAnnouncements(${pageNum-1})" href="javascript:void(0)">Prev</a>
                                                <span id="page_id">${pageNum}</span>
                                                <a class="btn btn-default" onclick="loadAnnouncements(${pageNum+1})" href="javascript:void(0)">Next</a>
                                                </strong></p>`)
        }
    });
}

$( document ).ready(function() {

    loadAnnouncements(1);

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