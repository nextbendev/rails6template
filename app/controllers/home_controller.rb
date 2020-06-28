class HomeController < ApplicationController
    before_action :set_sidebar, except: [:index]


  def index
    @users = User.all
    @blogs = Blog.all
    @categories = Category.all
    @note = Note.new
    @notes = Note.all
  end

  def dashboard
    @users = User.all
    @blogs = Blog.all
    @categories = Category.all
    @notes = Note.all
  end

  private
    def set_sidebar
      @show_sidebar = true
    end

    # Use callbacks to share common setup or constraints between actions.
  
end
