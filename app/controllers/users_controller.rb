class UsersController < ApplicationController

  before_filter :authenticate_user!, :except => :home

  def index
    @user = User.all
  end

  def show
  end

  def new
  end

  def sign_out
  	redirect_to root_path
  end

  def destroy
  	redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

end
