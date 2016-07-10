$(document).on('turbolinks:load', function () {
  $('[data-toggle="sidebar"]').click(function () {
    $('.wrapper').toggleClass('wrapper--sidebar-active');
  });
});
