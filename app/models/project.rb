class Project < ActiveRecord::Base
  attr_accessible :name, :title, :summary, :description, :history

  def to_param
    name
  end
end
