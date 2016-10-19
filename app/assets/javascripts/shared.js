

// This  Jquery listen  elment with the redirect-to class.
//Read the href attribute of this class and redirect to this element.
$('.redirect-to').click(function(event) {
    var clicked_element = $(this);
    window.location.href = clicked_element.attr('href');
});


$(".tabs").tabs({
    activate: function (event, ui) {
        var active = $('.tabs').tabs('option', 'active');
        $(".tabid").html('the tab id is ' + $("#tabs ul>li a").eq(active).attr("href"));

    }
}

  );
