class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:login]
  validates :email_or_phone, presence: true
  mount_uploader :header_image, ImageUploader
  mount_uploader :avatar_image, ImageUploader
  before_create :create_username
  attr_accessor :login
  has_many :tweets
  has_many :images, through: :tweets

  def self.new_username
    n = 9
    format("%0#{n}d", SecureRandom.random_number(10**n))
  end

  def email_required?
    false
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["phone = :value OR username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end

  private
  def create_username
    self.username = User.new_username
  end

  def email_or_phone
    email.presence or phone.presence
  end
end
