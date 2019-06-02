class Api::V1::ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Devise::Controllers::Helpers

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :first_name, :last_name, :password, :password_confirmation)}
    # devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name)}
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email])
  end
end
