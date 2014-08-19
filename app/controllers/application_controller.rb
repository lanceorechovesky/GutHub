class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :authenticate_user!
=======
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ beverage_ids: [] }, :email, :current_password, :password, :password_confirmation, :name, :gender, :weight, :bio) }
  end

>>>>>>> 462d6bb068fcd33ceaa5e5b6a2dd79d39fdd7e65
end
