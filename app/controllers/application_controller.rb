class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    redirect_to root_path unless session[:user_id]
  end
end
