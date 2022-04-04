$(function() {

// MENU MOBILE

  $('.burger-menu').click(function(e) {
    $('.menu-mobile').slideDown(1000);
    e.preventDefault();
  });

  $('.close-menu').click(function(e) {
    $('.menu-mobile').slideUp(500);
    $('.hidden').fadeIn();
    e.preventDefault();
  });


});

