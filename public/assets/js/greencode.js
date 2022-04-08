$(function() {

// MENU MOBILE


  $('.burger-menu').click(function(e) {
    $('.hidden').fadeOut(1000);
    $('.page').fadeOut(1000);
    $('.menu-mobile').fadeIn(1000);
    e.preventDefault();
  });

  $('.close-menu').click(function(e) {
    $('.menu-mobile').fadeOut(1000);
    $('.page').fadeIn(1000);
    $('.hidden').fadeIn(1000);
    e.preventDefault();
  });


});

