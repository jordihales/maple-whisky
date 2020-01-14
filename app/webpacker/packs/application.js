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
import "images/header-logo.svg";
import "images/menu-icon.svg";
import "images/favicon.png";
import "images/facebook-cover.png";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
Foundation.addToJquery($);

$(document).on("turbolinks:load", function() {
  $(this).foundation();

  function followCursor() {
    const cursor = document.getElementById("main-cursor");
    const followCursor = document.getElementById("follow-cursor");

    document.addEventListener("mousemove", function(event) {
      const { pageX: posX, pageY: posY } = event;
      cursor.style.left = `${posX - cursor.offsetWidth / 2}px`;
      cursor.style.top = `${posY - cursor.offsetHeight / 2}px`;
      followCursor.style.left = `${posX - followCursor.offsetWidth / 2}px`;
      followCursor.style.top = `${posY - followCursor.offsetHeight / 2}px`;
    });
  }

  followCursor();

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
    autoplaySpeed: 6000,
    slidesToShow: 1
  });
});
