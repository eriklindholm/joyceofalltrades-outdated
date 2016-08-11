(function(){

$(window).on('load page:load', function(){

  var tags = {}
  var $elemContainer = $('[data-tags]').first().parent();

  $('[data-tags]').each(function(){
    t = $(this).data('tags');
    t = t.split(',')
    var elem = this;
    $.each(t, function(i, tag){
      tag = tag.replace(/^\s+|\s+$/g, '')
      if (tags[tag] == undefined) {
        tags[tag] = $()
      }
      tags[tag] = tags[tag].add(elem);
    });
  });
  
  $('a[data-filter]').on('click', function() {
    tag = $(this).data('filter');
    $('.filter_selected').removeClass('filter_selected')
    $(this).addClass('filter_selected')
    window.tags = tags
    tags[tag].addClass('filter_selected')

    $('[data-tags]').sort(function(a, b) {
      $a = $(a);
      $b = $(b);
      var aVal = $a.data('filter-order');
      var bVal = $b.data('filter-order');
      if ($(a).hasClass('filter_selected')) aVal -= 10000;
      if ($(b).hasClass('filter_selected')) bVal -= 10000;
      return aVal > bVal
    }).appendTo($elemContainer);
  });

});




})(jQuery)
