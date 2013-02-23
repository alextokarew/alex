class WelcomeController < ApplicationController
  def contacts
  end

  def login
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Login successful!"
    else
      redirect_to root_path, :notice => "Login failed!"
    end
  end
end
