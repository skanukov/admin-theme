module Admin::ApplicationHelper
  # Returns the class for specified menu item path
  def class_for_active_menu_link(path)
    if current_page? path
      'sidebar__menu-link--active'
    else
      ''
    end
  end

  # Returns the actionbar icon for specified breadcrumb
  def actionbar_icon_for_breadcrumb(breadcrumb)
    icon_name = { root: 'home' }[breadcrumb.to_sym] || breadcrumb.to_s
    image_tag "icon-#{icon_name}", class: 'actionbar__icon',
                                   alt: "#{icon_name.capitalize} icon"
  end
end
