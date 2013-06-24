window.select = () ->
  if $(this).hasClass 'selected'
    $(this).removeClass 'selected'
    $(this).width(320).height(180)
    $('img').show()
  else
    $(this).addClass 'selected'
    $('img:not(.selected)').hide()
    $(this).width(1280).height(720)

gallery = (data) ->
  html = JST['app/templates/gallery.us'](text: data)
  $('body').html(html)
  $('img').click(select)

window.start = () ->
  $.get('images', gallery)
