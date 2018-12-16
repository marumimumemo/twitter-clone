class LikesController < ApplicationController
  before_action :set_tweet
  rescue_from ActionController::RedirectBackError, with: :redirect_to_default

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    redirect_to :back
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    like.destroy
    redirect_to :back
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

  def redirect_to_default
    redirect_to root_path
  end
end
