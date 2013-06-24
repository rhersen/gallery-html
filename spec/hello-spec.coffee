beforeEach ->
  affix 'img#sdc1'
  affix 'img#sdc2'

describe ".select", ->
  it 'should ', ->
    expect($('img').length).toEqual 2
    if $('img:hidden').length is 0
      $('img').click(select)
      $('#sdc2').click()
      expect($('img:hidden').length).toEqual 1