const $header = $('.header')
let scrollPrev = 0;
const cls = 'header--scrolled'
$(window).on('scroll', function () {
  
  const scrolled = $(window).scrollTop()
  
  
  if (scrolled > 50 && scrolled > scrollPrev) {
    
    $header.addClass(cls)
    console.log(scrolled);
  } else {
    
    $header.removeClass(cls)
    console.log(scrolled);
  }
  scrollPrev = scrolled;
})