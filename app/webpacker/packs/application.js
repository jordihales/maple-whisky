import Rails from "rails-ujs";
import $ from "jquery";
import Turbolinks from "turbolinks";
import Foundation from "foundation-sites";
import * as ActiveStorage from "activestorage";
import "slick-carousel/slick/slick";
import "slick-carousel/slick/slick.css";

import "application.scss";

import "images/scroll-down-arrow.svg";
import "images/arrow.svg";
import "images/in.svg";
import "images/logo.svg";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
Foundation.addToJquery($);

$(document).on("turbolinks:load", function() {
  $(this).foundation();

  const headerScrollClass = () => {
    const $header = $("#js-header");
    $(window).scrollTop() > 0
      ? $header.addClass("is-active")
      : $header.removeClass("is-active");
  };

  headerScrollClass();
  $(window).on("scroll", () => headerScrollClass());

  if ($("[data-slick='testimonials']").length > 0) {
    $("[data-slick='testimonials']").slick({
      arrows: true,
      autoplay: true,
      autoplaySpeed: 6000,
      slidesToShow: 1,
      adaptiveHeight: true
    });
  }

  $("[data-slick='favourites']").slick({
    arrows: true,
    autoplay: true,
    autoplaySpeed: 60000,
    slidesToShow: 1
  });
});
