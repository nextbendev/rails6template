class HomeController < ApplicationController
    before_action :set_sidebar, except: [:index]

  def index
  end
  def dashboard
    # code
  end

  private
    def set_sidebar
      @show_sidebar = true
    end
end
