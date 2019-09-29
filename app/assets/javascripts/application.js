// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require_tree .

$(document).ready(function() {


  var arr_spisok = ['#element_spisok_1', 
    '#element_spisok_2',
    '#element_spisok_3',
    '#element_spisok_4',
    '#element_spisok_5']

  $.each(arr_spisok, function(index, value){
    $(value).css({"background": '#5f44' + (Math.random().toString(16) + '00').substring(6,8).toUpperCase()})
  });



  $('.isDisabled').click(function(e) {
    e.preventDefault();    
  });

  $("#nav-purple").click(function(){
    $(".parent_create_email").css({"display":"block"})
  });

  $("#nav-red").click(function(){
    $(".parent_create_spisok").css({"display":"block"})
  });

  $(".parent_create_spisok, .parent_create_email").click(function(e){    
    if (e.target == this) {
    $(this).css({"display":"none"});
    }
  });

  $(".details_email").click(function(e){
    if (e.target == this) {
    $('details').not(this).removeAttr("open"); 
    }
  });
    
  

});