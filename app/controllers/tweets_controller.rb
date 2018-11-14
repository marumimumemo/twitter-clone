class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.includes(:user).order("created_at DESC")
    4.times { @tweet.images.build }
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: "ツイートが投稿されました"
    else
      render :index
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
      redirect_to root_path, notice: "ツイートが削除されました"
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body, images_attributes: [:image]).merge(user_id: current_user.id)
  end

end
