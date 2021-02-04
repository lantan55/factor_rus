import HcOffcanvasNav from "hc-offcanvas-nav";
import "hc-offcanvas-nav/dist/hc-offcanvas-nav.carbon.css";

document.addEventListener("DOMContentLoaded", function () {
  new HcOffcanvasNav("#navbarToggler", {
    position: "right",

    disableAt: 993,
    // pushContent: ".wrapper",
    closeOnClick: true,
    disableBody: true,
    levelTitles: true,
    levelTitleAsBack: true,
  });
});

const $header = $(".header");
let scrollPrev = 0;
const cls = "header--scrolled";
const $sumenus = $header.find(".dropdown-menu");

$(window).on("scroll", function () {
  const scrolled = $(window).scrollTop();
  const $anyOpenSubmenu = $sumenus.hasClass("show");

  if ($anyOpenSubmenu) return;
  if (scrolled > 50 && scrolled > scrollPrev) {
    $header.addClass(cls);
  } else {
    $header.removeClass(cls);
  }
  scrollPrev = scrolled;
});
