// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  $.ajax({
    type: "PUT",
    url:"/init",
    dataType: "json",
    success: function(data){
        console.log(data);}
  });

  $(".green.led").on("mouseenter",function(){

     $(".green-led-on").removeClass("hide");
     $(".green-led-off").addClass("hide");

     $.ajax({
      type: "PUT",
      url:"/green_on",
      dataType: "json",
      success: function(data){
          console.log(data);}
       });
  });

  $(".green.led").on("mouseleave",function(){

       $(".green-led-off").removeClass("hide");
       $(".green-led-on").addClass("hide");

       $.ajax({
        type: "PUT",
        url:"/green_off",
        dataType: "json",
        success: function(data){
            console.log(data);}
           });
    });


  $(".yellow.led").on("mouseenter",function(){

     $(".yellow-led-on").removeClass("hide");
     $(".yellow-led-off").addClass("hide");

     $.ajax({
      type: "PUT",
      url:"/yellow_on",
      dataType: "json",
      success: function(data){
          console.log(data);}
       });
  });

  $(".yellow.led").on("mouseleave",function(){

       $(".yellow-led-off").removeClass("hide");
       $(".yellow-led-on").addClass("hide");

       $.ajax({
        type: "PUT",
        url:"/yellow_off",
        dataType: "json",
        success: function(data){
            console.log(data);}
           });
    });

  $(".red.led").on("mouseenter",function(){

     $(".red-led-on").removeClass("hide");
     $(".red-led-off").addClass("hide");

     $.ajax({
      type: "PUT",
      url:"/red_on",
      dataType: "json",
      success: function(data){
          console.log(data);}
       });
  });

  $(".red.led").on("mouseleave",function(){

       $(".red-led-off").removeClass("hide");
       $(".red-led-on").addClass("hide");

       $.ajax({
        type: "PUT",
        url:"/red_off",
        dataType: "json",
        success: function(data){
            console.log(data);}
         });
    });
});