class UsersController < ApplicationController
layout :set_layout
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def set_layout
    self.action_name == "new" ? "popup" : "application"
  end

end
