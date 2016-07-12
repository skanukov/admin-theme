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
end
