beforeEach ->
  affix 'img#sdc1'
  affix 'img#sdc2'
  $('img').click ->
    affix 'img#full'
    select this

describe ".select", ->
  it 'should hide other images', ->
    expect($('img').length).toEqual 2
    $('#sdc2').click()
    expect($('img:hidden').length).toEqual 2

  it 'should remove full image instead of just hiding it' , ->
    expect($('img').length).toEqual 2
    $('#sdc2').click()
    $('img#full').click()
    expect($('img#full').length).toEqual 0

  it 'should enlarge the selected image', ->
    $('#sdc2').click()
    expect($('#sdc2').width()).toEqual 1280

  it 'should resize selected image when it is clicked again', ->
    $('#sdc2').click()
    $('img#full').click()
    expect($('#sdc2').width()).toEqual 320
