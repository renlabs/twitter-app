class CommentsController < ApplicationController

	def show
	end

  def create
  	@user = User.find(params[:user_id])
  	@tweet = @user.tweets.find(params[:tweet_id])
  	@comment = @tweet.comments.new(params[:comment])

  	if @comment.save
  		flash[:notice] = "Comment created"
  	else
  		flash[:notice] = "Comment failure"
  	end

  	respond_to do |format|
  		format.js {render :layout => false}
  	end

  end

  def destroy
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])

    @comment.destroy

    #redirect_to user_tweets_path(@user,@tweet)
  end


end
