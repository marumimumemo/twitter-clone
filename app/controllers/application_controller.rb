class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :phone, :username, :avatar_image])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :email, :phone, :username])
  end

  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end

end
