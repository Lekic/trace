class UsersController < ApplicationController
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
		if current_user.try(:admin?)
			@user = User.find(params[:id])
		else
			flash[:alert] = "Only admins can access this page"
			redirect_to users_path
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(params[:user].permit(:name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :phone_id, :admin))
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		if current_user.try(:admin?)
			@user = User.find(params[:id])
			@user.destroy
			flash[:notice] = "User successfully deleted."
		else
			flash[:alert] = "You cannot delete a user without admin rights."
		end
		redirect_to users_path
	end

	private
  		def user_params
    		params.require(:user).permit(:name, :email, :date_of_birth, :username, :password, :date_joined, :park, :phone, :admin)
  		end
		def verify_is_admin
			(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
		end
end
