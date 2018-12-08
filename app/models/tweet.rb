class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :images
end
