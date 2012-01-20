// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require rails.validations
//= require jquery.tinycarousel.min
//= require superbly-tagfield.min
//= require_tree .

$(document).ready(function(){
  	$('#slider1').tinycarousel();	
    $("#recipe_tag").superblyTagField({
                allowedTagsNumber: 5,
                showTagsNumber: 5,
                tags: ['Alfa Romeo','Aston Martin','Audi','Bentley','Bugatti']
            });

 
// Hint functionality
  $('.hint').inputHints();
  
  $('#register').click(function(){
    $('#reg_form').dialog({
      open: $.ajax({
        beforeSend: function(){
          $('#reg_form').html("loading");
        },
        url: "/users/sign_up",
        type: 'GET',
        success: function(data){
          $('#reg_form').html(data)
        }
       
      }),
      close: function(event, ui){
        $('.popup').fadeOut('slow');
      },
      title: "Free Sign up !!!",
      dialogClass: 'popup',
      height: 450,
      width: 450,
      modal: true,
      hide: "slideUp"
    });
  });
});

