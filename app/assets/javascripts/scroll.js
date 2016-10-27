var scroll_start = 0;
var startchange = $('.navbar');
var offset = startchange.offset();
$(document).scroll(function() {
  scroll_start = $(this).scrollTop();
  console.log(scroll_start);
  if(scroll_start > 0) {
      $('.navbar').css('background-color', '#35342f');
   } else {
      $('.navbar').css('background-color', 'rgba(255, 255, 255, .5)');
   }
});
