module ApplicationHelper
  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = 'RailsApp'
    if page_title.blank?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  # Returns the Bootstrap specific class for flash type
  def bootstrap_class_for(flash_type)
    { alert: 'alert-danger', notice: 'alert-success' }[flash_type.to_sym] ||
      flash_type.to_s
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
