module Admin::ApplicationHelper
  # Returns the class for specified menu item path
  def class_for_active_menu_link(path)
    if current_page? path
      'sidebar__menu-link--active'
    else
      ''
    end
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
