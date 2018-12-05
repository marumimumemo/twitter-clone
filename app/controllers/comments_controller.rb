class CommentsController < ApplicationController
  before_action :set_tweet

  def create
    @comment = @tweet.comments.new(comment_params)
    if @comment.save
      redirect_to tweet_path(@tweet.id), notice: "ツイートが投稿されました"
    else
      render template: "tweets/show" , alert: "投稿に失敗しました"
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.user_id == current_user.id
      if comment.destroy
        redirect_to tweet_path(@tweet.id), notice: "ツイートが削除されました"
      else
        render template: "tweets/show", alert: "削除に失敗しました"
      end
    else
      render template: "tweets/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end

end
