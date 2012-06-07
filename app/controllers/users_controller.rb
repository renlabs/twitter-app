class UsersController < ApplicationController
  
  #layout "application2"

  before_filter :authenticate_user!, :except => :home

  def index
    @user = User.order("id").page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @tweet = Tweet.new
  end

  def update
    @user = User.find(params[:id])
  end
    
  def create

  end

  def sign_out
  	redirect_to root_path
  end

  def destroy
  	redirect_to root_path
  end

end
