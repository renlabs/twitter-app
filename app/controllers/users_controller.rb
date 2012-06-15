class UsersController < ApplicationController
  
  #layout "application2"

  before_filter :authenticate_user!, :except => :home

  def index
    @user = User.order("id").page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = "User information updated"
    else
      flash[:notice] = "Failure"
    end

    redirect_to user_path(params[:id])

  end
    
  def create

  end

  def sign_out
  	redirect_to root_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  	redirect_to users_path
  end

end
