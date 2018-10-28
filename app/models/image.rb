class Image < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :user
  mount_uploader :image, ImageUploader
end
