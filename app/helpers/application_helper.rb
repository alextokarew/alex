module ApplicationHelper
  def cp(path)
    "active" if current_page? path
  end

  def menu_item(title,path)
    content_tag :li, link_to(title,path), :class => cp(path)
  end

  def time_tag(time)
    content_tag :time, l(time,:format=>:long).strip
  end
end
