# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  filter_township = ->
    country = $('#yfcase_country_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(township).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#yfcase_township_id').html(options)
      $('#yfcase_township_id').parent().show()
    else
      $('#yfcase_township_id').empty()
      $('#yfcase_township_id').html('<option value=""></option>')
      $('#yfcase_township_id').parent().hide()

  $('#yfcase_township_id').parent().hide()
  township = $('#yfcase_township_id').html()

  if $('#yfcase_country_id').val() != ''
    filter_township()
  $('#yfcase_country_id').change ->
    filter_township()
