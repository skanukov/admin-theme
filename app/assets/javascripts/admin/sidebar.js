$(document).on('turbolinks:load', function () {
  $('[data-toggle="sidebar"], .wrapper__overlay').click(function () {
    $('.wrapper').toggleClass('wrapper--sidebar-active');
  });
});
