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
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

function colourchanger(el) {
  var $me = $(el);
  var color = $me.parent().find(".glyphicon").css('color');
  if (color != 'red'){
    $me.parent().find(".glyphicon").css("color", "red");
  }
  if (color == 'red'){
    $me.parent().find(".glyphicon").css("color", "blue");
  }
}

$(document).ready(function(){

$('#test').on('click', function(){
  var $me = $('#test');
  var color = $me.parent().find(".glyphicon").css('color');
  if (color != 'red'){
  colourchanger($('#test'));
  }else{
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
