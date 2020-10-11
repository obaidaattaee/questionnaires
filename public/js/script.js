
$(document).ready(function(){
  // Activate the Carousel, but pause it from the start
  $("#myCarousel").carousel("pause");

    
  // Enable Carousel Indicators
  $(".item1").click(function(){
    $("#myCarousel").carousel(0);
  });
  $(".item2").click(function(){
    $("#myCarousel").carousel(1);
  });
  $(".item3").click(function(){
    $("#myCarousel").carousel(2);
  });

    
});


$('#exampleModal').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});

$('#hamidModal').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});

$('#bradModal').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});

$('#janeModal').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});
$('#signIn').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});
$('#signUp').on('show.bs.modal', function (e) {
    $('body').addClass("example-open");
}).on('hide.bs.modal', function (e) {
    $('body').removeClass("example-open");
});
// navbar background color change on scroll

    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if(scroll < 300){
            $('.my-nav').css('background', 'transparent');
        } else{
            $('.my-nav').css({
              "background": "rgba(41, 41, 35, 0.9)",
              "transition":"0.7s"
            });
        }
    });


// full page navigation

function openNav() {
  document.getElementById("myNav").style.display = "block";
}

function closeNav() {
  document.getElementById("myNav").style.display = "none";
}


// SELECT OPTION
// Add active class to the current button (highlight it)
// Add active class to the current button (highlight it)
var header = document.getElementById("paypal");
var btns = header.getElementsByClassName("paypal");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active-p");
  if (current.length > 0) { 
    current[0].className = current[0].className.replace(" active-p", "");
  }
  this.className += " active-p";
  });
}

// onclick function
function likeFunction(x) {
  x.classList.toggle("love-react-l");
}
// // Toggle menu

// $(document).ready(function(){
//   $('[data-toggle="tooltip"]').tooltip();   
// });


// This is the funtion you need to copy
// Copy from line 9 to 34

