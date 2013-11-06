# @author Daniel Lekic and Hayden Bleasel
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    index_path
  end

  def after_update_path_for(resource)
    index_path
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  helper_method :resource, :resource_name, :devise_mapping

  before_filter :configure_devise_params, if: :devise_controller?

  protected

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth)
    end
    devise_parameter_sanitizer.for(:edit) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth, :current_password)
    end
  end
  before_filter :configure_devise_params, if: :devise_controller?
end
