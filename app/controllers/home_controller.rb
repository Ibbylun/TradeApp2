class HomeController < ApplicationController
  def index
    if params[:approved] == "false"
      @users = User.where(approved: nil)
    else
      @users = User.all
    end
  end
end
