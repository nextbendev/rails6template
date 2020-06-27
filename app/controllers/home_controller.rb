class HomeController < ApplicationController
    before_action :set_sidebar, except: [:index]

  def index
    @users = User.all
    @blogs = Blog.all
    @categories = Category.all
  end

  def dashboard
    @users = User.all
    @blogs = Blog.all
    @categories = Category.all
  end

  private
    def set_sidebar
      @show_sidebar = true
    end
end
