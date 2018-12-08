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
      render :index, alert: "投稿に失敗しました"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user).order("created_at ASC")
    4.times { @comment.images.build }
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      if tweet.destroy
        redirect_to root_path, notice: "ツイートが削除されました"
      else
        render :index, alert: "削除に失敗しました"
      end
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body, images_attributes: [:image]).merge(user_id: current_user.id)
  end

end
