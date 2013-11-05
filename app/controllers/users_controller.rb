# @author Daniel Lekic
class UsersController < ApplicationController

	# Handles a GET request to /users
	# Administrator access level
	# @return [User] all the users in the system
	def index
		if current_user.try(:admin?)
			@users = User.all.order(:name)
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
		end
	end
	
	# Handles a GET request to /users/new
	# Accessible to anyone (no sign-in)
	# @returns [User] a a new user
	def new
		@user = User.new
	end

	# Handles a POST request to /users/new
 	# Accessible to anyone (no sign-in)
  	# @returns [Path] to the following page (user or new form)
	def create
 		@user = User.new(user_params)
 		@user.admin = false
		if @user.save
  			redirect_to @users_path
  		else
  			render 'new'
  		end
	end

	# Handles a GET request to /sightings/{id}/edit
  	# Accessible to administrator or account holder
  	# @returns [Path] to the users page
	def edit
		if current_user.try(:admin?)
			@user = User.find(params[:id])
		else
			flash[:alert] = "Sorry, you don't have the right privileges to edit a pest."
			redirect_to users_path
		end
	end

	# Handles a PUT request to /users/{id}
  	# Accessible to administrators and account holder
  	# @returns [Path] to the following page (user or edit form)
	def update
		@user = User.find(params[:id])

		if @user.update(params[:user].permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode, :avatar))
			flash[:notice] = "Yay - profile successfully updated!"
			redirect_to @users_path
		else
			render 'edit'
		end
	end

	# Handles a DELETE request to /users/{id}
  	# Accessible to administrators and account holder
  	# @returns [Path] to the users page
	def destroy
		if current_user.try(:admin?)
			@user = User.find(params[:id])
			@user.destroy
			flash[:notice] = "BLAM - user was destroyed!"
		else
			flash[:alert] = "Sorry, only admins can delete users."
		end
		redirect_to users_path
	end

	# Retrieves all phones owned by the user
	# Accessible to everyone
	# @returns [Phone] all phones owned by the user
	def phones
		@phones = Phone.where(:user_id => @user.id).order('id').all
	end

	# Permitted parameters when creating a user
	private
  		def user_params
    		params.require(:user).permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode, :avatar)
  		end
		def verify_is_admin
			(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
		end
end
