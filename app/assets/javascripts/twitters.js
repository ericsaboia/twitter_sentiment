$(function () {

  $('#search-form').submit(function (event) {
    event.preventDefault();
    $.get($(this).attr('action'), {q: $('#search-text').val()}, function (data) {
      $('#search-results').html(HandlebarsTemplates['twitters/index']({tweets: data}));
    });
  });

});