$(function () {

  $('#search-form').submit(function (event) {
    event.preventDefault();
    NProgress.start();
    $.get($(this).attr('action'), {q: $('#search-text').val()}, function (data) {
      NProgress.done();
      $('#search-results').html(HandlebarsTemplates['twitters/index']({tweets: data}));
    });
  });

});