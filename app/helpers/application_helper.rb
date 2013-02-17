module ApplicationHelper
  def cp(path)
    "active" if current_page? path
  end

  def cc(path)
    "active" if controller_name==Rails.application.routes.recognize_path(path, method: :get)[:controller]
  end

  def menu_item(title,path, method)
    content_tag :li, link_to(title,path), :class => self.send(method,path)
  end

  def time_tag(time)
    content_tag :time, l(time,:format=>:long).strip
  end
end
