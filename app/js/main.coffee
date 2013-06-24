window.select = () ->
  $(this).addClass 'selected'
  $('img:not(.selected)').hide()

gallery = (data) ->
  html = JST['app/templates/gallery.us'](text: data)
  $('body').html(html)
  $('img').click(select)

window.start = () ->
  $.get('images', gallery)
