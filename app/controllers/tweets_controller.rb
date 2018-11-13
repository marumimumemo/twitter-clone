class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.includes(:user).order("created_at DESC")
    4.times { @tweet.images.build }
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body, images_attributes: [:image]).merge(user_id: current_user.id)
  end

end
