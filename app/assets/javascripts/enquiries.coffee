[$_ftb, $_cursor] = []

$(window).on 'load page:load', ->
  $('textarea.fancy').each ->
    $(this).after($fancyTextBox(this)).attr('tab-index', '-1').hide()


$fancyTextBox = (textarea) ->
  $_ftb || do ->
    $_ftb = $('<div class="fancyTextBox">')
    $_ftb.attr('contentEditable', true)
    $_ftb.attr('tab-index', '3')
    addFtbListeners(textarea)

$cursor = ->
  $_cursor || do ->
    $_cursor = $('<div class="cursor">')
    $_cursor.attr('contentEditable', false)
    setInterval(blinkCursor, 500)
    $_cursor

blinkCursor = ->
  $cursor().toggleClass('blink')


addFtbListeners = (textarea)->
  $fancyTextBox().on 'keyup', ->
    raw = $(this).html()
    txt = $(this).text()
    $(textarea).val(sanitize_for_textarea(raw))
    if txt.length < 1
      $(this).prepend $cursor()
    else
      $cursor().detach()

  $fancyTextBox().on 'paste', (e) ->
    e = e.originalEvent;
    if window?.clipboardData?.getData
      pastedText = window.clipboardData.getData('Text');
    else if e?.clipboardData?.getData
      pastedText = e.clipboardData.getData('text/plain');
    e.preventDefault();
    $(this).append(pastedText).trigger('keyup')

  $fancyTextBox().on 'focus', (e) ->
    $(this).addClass('focused')
  
  $fancyTextBox().on 'blur', (e) ->
    $(this).removeClass('focused')


  $fancyTextBox().trigger('keyup')

sanitize_for_textarea = (val) ->
  entities = {
    '&nbsp;': ' '
    '&gt;': '>'
    '&lt;': '<'
    '&amp;': '&'
  }

  val = val.replace(/<div>/g, '\n')
  val = val.replace(/<.*?>/g, '')

  for find, replace of entities
    val = val.replace(new RegExp(find, 'g'), replace)
  return val
