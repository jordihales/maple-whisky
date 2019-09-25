import Rails from "rails-ujs";
import $ from "jquery";
import Turbolinks from "turbolinks";
import Foundation from "foundation-sites";
import * as ActiveStorage from "activestorage";

import "application.scss";

import "images/scroll-down-arrow.svg";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
Foundation.addToJquery($);

$(document).on("turbolinks:load", function() {
  $(this).foundation();
});
