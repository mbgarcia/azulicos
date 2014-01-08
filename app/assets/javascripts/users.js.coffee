# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$.fn.datetimepicker.defaults = {
  maskInput: true,
  pickDate: true,
  pickTime: false,
  pick12HourFormat: false,
  pickSeconds: false,
  startDate: -Infinity,
  endDate: Infinity
};

$('#birth-day-field').datetimepicker => language: 'pt-BR'
$('#father-birth-day-field').datetimepicker => language: 'pt-BR'
$('#mother-birth-day-field').datetimepicker => language: 'pt-BR'
$('#responsible-birth-day-field').datetimepicker => language: 'pt-BR'
$('#admission-field').datetimepicker => language: 'pt-BR'