class TweetsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @user = User.find(params[:user_id])
  	@tweet = @user.tweets
    @comment = Comment.new
  end

  def show
  	@tweet = Tweet.find(params[:id])
  end

  def new
  	@tweet = Tweet.new
  end

  def create
    @user = User.find(params[:user_id])
  	@tweet = @user.tweets.new(params[:tweet])
    @comment = Comment.new

  	if @tweet.save
  		flash[:notice] = "Tweet creation successful"
  	else
  		flash[:notice] = "#{@tweet.errors}"
  	end

    respond_to do |format|
      format.js {render :layout => false}
    end


  end

end
