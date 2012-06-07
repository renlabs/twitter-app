class TweetsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  	@tweet = @user.tweets
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
