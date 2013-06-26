showOnlyFull = ->
  $('img').hide()
  $(this).show()

removeFull = ->
  $(this).hide()
  $('img').show()
  $('img.selected').width(320).height(180).removeClass('selected')
  $(this).remove()

window.select = (self) ->
  $('img#full').click removeFull
  $(self).addClass 'selected'
  $('img:not(.selected)').hide()
  $(self).width(1280).height(720)

gallery = (data) ->
  $('body').html JST['app/templates/gallery.us'](text: data)
  $('img').click ->
    $('body').append JST['app/templates/image.us'](id: $(this).attr 'id')
    $('img#full').load showOnlyFull
    select this

window.start = () ->
  $.get 'images', gallery
