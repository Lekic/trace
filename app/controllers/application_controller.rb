class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Redirects user to specified page after sign in
  # Access level: User
  def after_sign_in_path_for(resource)
    index_path
  end

  # Defines the resource referred to by devise
  def resource_name
    :user
  end

  # Creates a new instance of the resource for devise
  def resource
    @resource ||= User.new
  end

  # Maps the devise resource to devise mapping
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  helper_method :resource, :resource_name, :devise_mapping

  before_filter :configure_devise_params, if: :devise_controller?

  protected

  # Configures permitted parameters in devise sign up and edit registration
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth)
    end
    devise_parameter_sanitizer.for(:edit) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth, :current_password)
    end
  end
end
