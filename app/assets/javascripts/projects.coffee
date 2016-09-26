$(window).on 'resize load', ->
  curTop = 0
  $('.project_tag').each ->
    console.log("HI")
    if curTop < $(this).offset().top
      $(this).addClass('first_in_line')
      curTop = $(this).offset().top
    else
      $(this).removeClass('first_in_line')
