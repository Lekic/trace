class Devise::RegistrationsController < DeviseController

   #before_action :configure_permitted_parameters, if: :devise_controller?
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

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth)
    end
    devise_parameter_sanitizer.for(:edit) do |u|
      u.permit(:username, :name, :email, :password, :password_confirmation, :admin, :date_of_birth, :current_password)
    end
  end
  before_filter :configure_devise_params, if: :devise_controller?

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
      if resource.update_with_password(user_params)
        if is_navigational_format?
          flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ? :update_needs_confirmation : :updated
          set_flash_message :notice, flash_key
        end
        sign_in resource_name, resource, :bypass => true
        respond_with resource, :location => after_update_path_for(resource)
      else
        clean_up_passwords resource
        respond_with resource
      end
    end

   def user_params 
     params.require(:user).permit(:email, :password, :date_of_birth, :current_password, :password_confirmation, :name, :username) 
   end
end