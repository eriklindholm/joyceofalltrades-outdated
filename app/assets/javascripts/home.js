(function(){

  $(window).on('load page:load', function(){

    $whiteCenter = $('#home_white_centre') 
    $red = $('#home_red_back')
    $white = $('#home_white_back')


    if ($('#home_page_wrapper').length > 0) {
      $(window).off('mousemove', onMouseMove);
      $(window).on('mousemove', function(e){
        onMouseMove(e);
      });

    }

    animateLines()
  });


  function onMouseMove(e){
    $whiteCenter.css('background-position', whiteCenterPosition(e.pageX, e.pageY))
    $red.css('background-position', redPosition(e.pageX, e.pageY))
    $white.css('background-position', whitePosition(e.pageX, e.pageY))
  }

  function whiteCenterPosition(x, y) {
    x = x * 0.05 + 20
    y = y * 0.05 - 30
    return x + 'px ' + y + 'px'
  }
  function redPosition(x, y) {
    x *= 0.01
    y *= 0.01
    return x + 'px ' + y + 'px'
  }

  function whitePosition(x, y) {
    x *= 0.02
    y *= 0.02
    return x + 'px ' + y + 'px'
  }

///////////////////////////////////////////

  function animateLines() {

    $line1 = $('.about_home_link .spacer_div')
    $line2 = $('.journal_home_link .spacer_div')
    $line3 = $('.play_home_link .spacer_div')
    $line4 = $('.work_home_link .spacer_div')


    $('.hidden_for_anim').each(function(i){
      var _this = this;
      setTimeout(function(){
        $(_this).removeClass('hidden_for_anim')
      }, 400*i+250)
    });
  
  }

})(jQuery)
