module Admin::ApplicationHelper
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
