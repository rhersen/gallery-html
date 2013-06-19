gallery = (data) ->
  html = JST['app/templates/gallery.us'](text: data)
  $('body').html(html)

$(document).ready(-> $.get('images', gallery))