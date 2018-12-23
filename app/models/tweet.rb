class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :images, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :images

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
