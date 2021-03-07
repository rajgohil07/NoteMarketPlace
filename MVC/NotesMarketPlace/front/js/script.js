// Rating mechenism
$(document).ready(function () {
  for (i = 1; i < 9; i++) {
    for (j = 5; j >= 1; j--) {
      $(".rate" + i + " .rate").append(
        '<input type="radio" id="s_' +
          i +
          "_" +
          j +
          '" name="rate' +
          i +
          '" value="5" /><label for="s_' +
          i +
          "_" +
          j +
          '" title="text">5 stars</label>'
      );
    }
  }
});

// show hide password
$(".toggle-password").click(function () {
  let input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});

//nav bar part
function sticky_header() {
  let header_height = jQuery(".site-header").innerHeight() / 2;
  let scrollTop = jQuery(window).scrollTop();
  if (scrollTop > header_height) {
    jQuery("body").addClass("sticky-header");

    //Show blue logo
    $(".site-header .header-wrapper .logo-wrapper a img").attr(
      "src",
      "images/blue-logo.png"
    );
  } else {
    jQuery("body").removeClass("sticky-header");

    //Show default logo
    $(".site-header .header-wrapper .logo-wrapper a img").attr(
      "src",
      "images/top-logo.png"
    );
  }
}

jQuery(document).ready(function () {
  let bodyId = $("body").attr("id");

  if (bodyId == "bodyForStickyHeader") sticky_header();
});

jQuery(window).scroll(function () {
  let bodyId = $("body").attr("id");

  if (bodyId == "bodyForStickyHeader") sticky_header();
});
jQuery(window).resize(function () {
  let bodyId = $("body").attr("id");

  if (bodyId == "bodyForStickyHeader") sticky_header();
});

// for mobile
$(function () {
  //Show mobile nav
  $("#mobile-nav-open-btn").click(function () {
    $("#mobile-nav").css("height", "100%");
  });

  //Hide mobile nav
  $("#mobile-nav-close-btn, .clickable-op a, #mobile-nav-content button").click(
    function () {
      $("#mobile-nav").css("height", "0%");
    }
  );
  $(".dropdown-menu a").click(function () {
    $("#mobile-nav").css("height", "0%");
  });
});

//enable and disable price input
function disablePrice() {
  $("#price-box").attr("disabled", true);
  $("#price-box").attr("required", false);
}

function enablePrice() {
  $("#price-box").attr("disabled", false);
  $("#price-box").attr("required", true);
}

//show file name
var input = document.getElementById("upload-file");
var infoArea = document.getElementById("file-upload-filename");
input.addEventListener("change", showFileName);
function showFileName(event) {
  var input = event.srcElement;
  var fileName = input.files[0].name;
  infoArea.textContent = "File name: " + fileName;
}

//show file name
var input2 = document.getElementById("note-preview");
var infoArea2 = document.getElementById("file-upload-filename2");
input2.addEventListener("change", showFileName2);
function showFileName2(event) {
  var input2 = event.srcElement;
  var fileName2 = input2.files[0].name;
  infoArea2.textContent = "File name: " + fileName2;
}
