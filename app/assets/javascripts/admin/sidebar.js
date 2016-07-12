$(document).on('turbolinks:load', function () {
  // Toggle sidebar on mobile devices
  $('[data-toggle="sidebar"], .wrapper__overlay').click(function() {
    $('.wrapper').toggleClass('wrapper--sidebar-active');
  });

  // Open sidemenu if active item is collapsed
  $(function() {
    $menuItem = $('.sidebar__menu-link--secondary.sidebar__menu-link--active')
      .closest('.sidebar__menu-item');
    $menuItem.find('.sidebar__menu-link').toggleClass('collapsed')
      .attr('aria-expanded', true);
    $menuItem.find('.sidebar__menu').toggleClass('in');
  });
});
