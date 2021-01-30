const $header = $(".header");
let scrollPrev = 0;
const cls = "header--scrolled";
// const $sumenus = $header.find(".submenu__list");

$(window).on("scroll", function () {
  const scrolled = $(window).scrollTop();
  // const anyOpenSubmenu = $sumenus.css("visibility") === "visible";

  // if (anyOpenSubmenu) return;
  if (scrolled > 50 && scrolled > scrollPrev) {
    $header.addClass(cls);
  } else {
    $header.removeClass(cls);
  }
  scrollPrev = scrolled;
});
