class Comment < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :user
  has_many :images, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :images
end
