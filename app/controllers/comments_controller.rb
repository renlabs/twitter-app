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

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    #@user = User.find(params[:user_id])
    #@tweet = @user.tweets.find(params[:tweet_id])
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment]) 
      flash[:notice] = "update successful"
    else
      flash[:notice] = "failure"
    end

    # respond_to do |format|
    #   format.js {render :layout => false}
    # end
    redirect_to user_tweets_path(params[:user_id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])

    @comment.destroy

    respond_to do |format|
      format.js {render :layout => false}
    end


    #redirect_to user_tweets_path(@user,@tweet)
  end


end
