module Admin::ApplicationHelper
  # Returns the class for specified menu item path
  def class_for_menu_link(path)
    css_class = 'sidebar__menu-link'
    css_class += ' sidebar__menu-link--active' if current_page? path
    css_class
  end

  # Returns the actionbar icon for specified path
  def actionbar_icon_for_path(path)
    icon_name = if path.include? 'admin'
                  'admin'
                else
                  'home'
                end
    image_tag "icon-#{icon_name}", class: 'actionbar__icon',
                                   alt: "#{icon_name.capitalize} icon"
  end
end
