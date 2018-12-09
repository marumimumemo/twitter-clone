class LikesController < ApplicationController
  rescue_from ActionController::RedirectBackError, with: :redirect_to_default

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    @likes = Like.where(tweet_id: params[:tweet_id])
    @tweets = Tweet.all
    redirect_to :back
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @like.destroy
    @likes = Like.where(tweet_id: params[:tweet_id])
    @tweets = Tweet.all
    redirect_to :back
  end

  private

  def redirect_to_default
    redirect_to root_path
  end
end
