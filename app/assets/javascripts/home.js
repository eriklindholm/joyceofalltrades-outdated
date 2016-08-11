(function(){

$(window).on('load page:load', function(){

  $whiteCenter = $('#home_white_centre') 
  $red = $('#home_red_back')
  $white = $('#home_white_back')



  if ($('#home_page_wrapper').length > 0) {
    $(window).on('mousemove', function(e){
      $whiteCenter.css('background-position', whiteCenterPosition(e.pageX, e.pageY))
      $red.css('background-position', redPosition(e.pageX, e.pageY))
      $white.css('background-position', whitePosition(e.pageX, e.pageY))
    });
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


});

})(jQuery)
