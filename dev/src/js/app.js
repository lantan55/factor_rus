import "./carousel";
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

  const resultLabel = Number($("#result").text());

  $(document).on("click", "#calc", function (e) {
    e.preventDefault();

    const type = $(".r-toggle input[type='radio']:checked").data("val");
    const count = Number($("#count").val());
    const height = Number($("#height").val());
    const subs = $("#answer1:checked").data("val");
    let result;
    if (subs) {
      result = type * height * count + subs;
    } else {
      result = type * height * count;
    }
    console.log(type, count, height, subs);

    if (!(type && count && height)) {
      $("#result").addClass("error").text("Заполните все поля");
    } else {
      $("#result")
        .removeClass("error")
        .text(result + " руб");
    }
  });
});
