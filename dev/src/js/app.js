import "./carousel";
import "@fancyapps/fancybox";
import "@fancyapps/fancybox/dist/jquery.fancybox.css";

$(function ($) {
  $(document).on("click touchend", ".r-toggle", function () {
    $(".r-toggle").removeClass("active");
    $(this)
      .addClass("active")
      .find("input")
      .prop("checked", true)
      .trigger("change");
  });
  $(document).on("click touchend", ".calc__btn-group__item", function () {
    $(".calc__btn-group__item").removeClass("active");
    $(this)
      .addClass("active")
      .find("input")
      .prop("checked", true)
      .trigger("change");
  });

  $(document).on("keyup", "#name", function () {
    if ($(this).val().length) {
      const count = $(this).val().match(/[^\s]/g).length;
      $("#count").val(count);
    } else {
      $("#count").val(0);
    }
  });

  $(document).on("keyup", 'input[type="number"]', function () {
    const v = parseInt($(this).val());
    const min = parseInt($(this).attr("min"));
    const max = parseInt($(this).attr("max"));

    if (v < min) {
      $(this).val(min);
    } else if (v > max) {
      $(this).val(max);
    }
  });

  const resultLabel = Number($("#result").text());

  $(document).on("change keyup", function () {
    const type = $(".r-toggle input[type='radio']:checked").data("val");
    const count = Number($("#count").val());
    const height = Number($("#height").val());
    const subs = $("#answer1:checked").data("val");
    let result;
    if (subs) {
      result = (type * height * count + subs).toLocaleString();
    } else {
      result = (type * height * count).toLocaleString();
    }

    if (!(type && count && height)) {
      $("#result").addClass("error").text("");
    } else {
      $("#result")
        .removeClass("error")
        .text(result + " руб");
    }
  });
  $(document).on("click touchend", "#calc, #openCalcModal", function (e) {
    e.preventDefault();

    $.fancybox.open($("#modalCalc"));
  });
  $(document).on("click touchend", "#openModalPhone", function (e) {
    e.preventDefault();
    $.fancybox.open($("#modalPhone"));
  });
});
