
$(window).scroll(function() {
  var theta = $(window).scrollTop() % Math.PI;
  $('.counterclockwise_spin').css({ transform: 'rotate(' + (theta * 256 + 1.115   ) + 'rad)' });
});

$(window).scroll(function() {
  var theta = $(window).scrollTop() % Math.PI;
  $('.clockwise_spin').css({ transform: 'rotate(' + (-theta * 256) + 'rad)' });
});

$(window).bind("load", function() {
   $('.clockwise_spin').css({ transform: 'rotate(' + (1.115) + 'rad)' });
});