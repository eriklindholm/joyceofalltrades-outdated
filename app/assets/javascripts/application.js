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
//= require_tree .


$(window).on('ready load page:load', init);

function init() {

  $('.freeflow_container').masonry({ itemSelector: '.freeflow_item' });
  $('.project_images_list').masonry({ itemSelector: '.project_image' });

  $('.menu_icon').on('click', function(){
    $('body').toggleClass('menu_open')
  });



  $('[data-tab-head]').on('click', function(){
    $('[data-tab-content]').addClass('hidden');
    $('[data-tab-content=' + $(this).data('tab-head') + ']').removeClass('hidden');
  }).first().click();

  $('[data-url]').on('click', function(){
    window.location.href = $(this).data('url')
  })

  setTimeout(function(){$('[data-tab-content]').addClass('animated')}, 1)

}
