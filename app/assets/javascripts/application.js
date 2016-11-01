// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require bootstrap
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$( function() {

  $( '#cd-dropdown' ).dropdown( {
    gutter : 5,
    delay : 100,
    random : true
  } );

});

$(document).ready(function(){
$(".navbar-nav ul li a").mouseup(function(){
    $(this).blur();
})
});

function colourchanger(el, id) {
  var $me = $(el);
  var color = $me.parent().find(".glyphicon").css('color');
  $me.parent().find(".glyphicon").css("color", "red");
  var string = "colourchanger2(this," + id +");";
  document.getElementById(id).setAttribute("onclick", string);
}

function colourchanger2(el, id) {
  var $me = $(el);
  var color = $me.parent().find(".glyphicon").css('color');
  $me.parent().find(".glyphicon").css("color", "black");
  var string = "colourchanger(this," + id +");";
  document.getElementById(id).setAttribute("onclick", string);
}

$(document).ready(function(){

$('#test2').on('click', function(){
  var $me = $('#test2');
  var color = $me.parent().find(".glyphicon").css('color');
  if (color != 'red'){
    $me.parent().find(".glyphicon").css("color", "blue");
  }
});
});


/* -------------------- ARROW DIRECTION CHANGE IN ACCORDEON MENU -------------------*/

/*
$(document).ready(function(){
$('.collapse').on('shown.bs.collapse', function() {
  $(this).parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
}).on('hidden.bs.collapse', function() {
  $(this).parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
})});*/

$(document).ready(function(){
  $('#pv1.collapse').on('shown.bs.collapse', function() {
  $('#arrow1').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow1').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).ready(function(){
  $('#pv2.collapse').on('shown.bs.collapse', function() {
  $('#arrow2').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow2').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).ready(function(){
  $('#pv3.collapse').on('shown.bs.collapse', function() {
  $('#arrow3').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow3').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).ready(function(){
  $('#pv4.collapse').on('shown.bs.collapse', function() {
  $('#arrow4').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow4').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).ready(function(){
  $('#pv5.collapse').on('shown.bs.collapse', function() {
  $('#arrow5').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow5').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).ready(function(){
  $('#pv6.collapse').on('shown.bs.collapse', function() {
  $('#arrow6').parent().find(".glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
  }).on('hidden.bs.collapse', function() {
    $('#arrow6').parent().find(".glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
  });
});

$(document).on('click','.navbar-collapse.in',function(e) {
    if( $(e.target).is('a') ) {
        $(this).collapse('hide');
    }
});
