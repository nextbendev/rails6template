class AdminController < ApplicationController
  before_action :set_sidebar, except: [:index]
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def dashboard
    @users = User.all
    @categories = Category.all
    @notes = Note.all

    @categories = Category.all

    cate = params[:cate]

    if !cate.nil?
      @blogs = Blog.where(:category_id => cate)
    else
    @blogs = Blog.all
    end
  end


  private
    def set_sidebar
      @show_sidebar = true
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :content, :category_id, :photo)
    end

end
