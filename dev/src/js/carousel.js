import "owl.carousel";

$(".works__carousel").owlCarousel({
  loop: true,
  margin: 30,
  nav: false,
  dots: false,
  autoplay: true,
  responsive: {
    0: {
      items: 3,
    },
    420: {
      items: 3,
    },
    1000: {
      items: 4,
    },
  },
});
$(".clients__carousel").owlCarousel({
  loop: false,
  margin: 20,
  nav: false,
  dots: false,
  autoplay: true,
  items: 5,
  responsive: {
    0: {
      items: 1,
    },
    600: {
      items: 3,
    },
    1000: {
      items: 5,
    },
  },
});
$(".reviews__carousel").owlCarousel({
  loop: false,
  margin: 30,
  nav: false,
  dots: false,
  autoplay: true,
  items: 3,
  responsive: {
    0: {
      items: 1,
    },
    600: {
      items: 3,
    },
    1000: {
      items: 3,
    },
  },
});
