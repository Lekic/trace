class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
    welcome_index_path
  end

  def after_update_path_for(resource)
    #fix this hoe.
  end

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:edit) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :date_of_birth, :current_password)
    end
  end
end
