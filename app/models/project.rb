class Project < ActiveRecord::Base
  attr_accessible :name, :summary

  def to_param
    name
  end
end
