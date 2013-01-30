class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    render 'posts/index'
  end

  def about

  end

  def contacts
  end

  def other
    render :nothing => true
  end
end
