

// This  Jquery listen  element with the redirect-to class.
//Read the href attribute of this class and redirect to this element.

var displayTabContent = function(tab){};

var resetTabs = function(){
  $(".tab-content").hide();
  $(".tab").removeClass("active");
};

var displayselectedTab = function(selected_tab){
  $(selected_tab).addClass("active");
  selected_content = selected_tab.attr('content-id');
  $(selected_content).show();
};


$('.redirect-to').click(function(event) {
    var clicked_element = $(this);
    window.location.href = clicked_element.attr('href');
});


//Function to display
$(".tab").click(function(event){
  selected_tab = $(this);
  resetTabs();
  displayselectedTab(selected_tab);
});
