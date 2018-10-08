class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def create
    Tweet.create(tweet_params)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body).merge(user_id: current_user.id)
  end
end
