class TweetsController < ApplicationController

  def index
  	@tweet = User.find(params[:id]).tweets
  end

  def show
  	@tweet = Tweet.find(params[:id])
  end

  def new
  	@tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.create(params[:tweet])

  	if @tweet.save
  		flash[:notice] = "Tweet creation successful"
  	else
  		flash[:notice] = "#{@tweet.errors}"
  	end
  	#redirect_to user_tweet_index 
  end

end
