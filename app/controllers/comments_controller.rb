class CommentsController < ApplicationController

  def create
  	@tweet = Tweet.find(params[:id])
  	@comments = @tweet.comments.new

  	if @comments.save
  	else
  	end

  	respond_to do |format|
  		format.js
  		
  	end

  end


end
