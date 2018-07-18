$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

var $myGroup = $('#wrapper');
$myGroup.on('show.bs.collapse','.collapse', function() {
    $myGroup.find('.collapse.in').collapse('hide');
});