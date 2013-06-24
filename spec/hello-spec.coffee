beforeEach ->
  affix 'img#sdc1'
  affix 'img#sdc2'
  $('img').click(select)

describe ".select", ->
  it 'should hide other images', ->
    expect($('img').length).toEqual 2
    if $('img:hidden').length is 0
      $('#sdc2').click()
      expect($('img:hidden').length).toEqual 1
      $('#sdc2').click()
      expect($('img:hidden').length).toEqual 0
  it 'should enlarge the selected image', ->
    $('#sdc2').click()
    expect($('#sdc2').width()).toEqual 1280
  it 'should resize selected image when it is clicked again', ->
    $('#sdc2').click()
    $('#sdc2').click()
    expect($('#sdc2').width()).toEqual 320
