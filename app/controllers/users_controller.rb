class UsersController < ApplicationController
	before_filter :authenticate_user!
  	before_filter :configure_permitted_parameters, if: :devise_controller?

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
 		@user = User.new(user_params)
		if @user.save	
  			redirect_to @user
  		else
  			render 'new'
  		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(params[:user].permit(:name, :email, :date_of_birth, :username, :password, :date_joined))
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	protected

  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
	end

	private
  		def user_params
    		params.require(:user).permit(:name, :email, :date_of_birth, :username, :password, :date_joined)
  		end

end
