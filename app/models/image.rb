class Image < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :user
  belongs_to :comment
  mount_uploader :image, ImageUploader
end
