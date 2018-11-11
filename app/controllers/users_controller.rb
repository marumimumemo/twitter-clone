class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @tweets = current_user.tweets.order("created_at DESC")
  end

  private

  def user_params
    params.require(:user).permit(:name, :header_image, :profile, :avatar_image, :email, :phone, :address, :url, :birthday)
  end
end
