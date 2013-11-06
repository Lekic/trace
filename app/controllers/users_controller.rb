# @author Daniel Lekic and Hayden Bleasel
class UsersController < ApplicationController

	# GET /users
	# Access level: Administrator
	def index
		if current_user.try(:admin?)
			@users = User.all.order(:name)
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
		end
	end
	
	# GET /users/new
	# Access level: All
	def new
		@user = User.new
	end

	# PUT /users/new
	# Access level: All
	def create
		@user = User.new(user_params)
		@user.admin = false
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	# GET /users/:id
	# Access level: All
	def show
		@user = User.find(params[:id])
		@types = PestType.all
		@sightings = Sighting.where(:user_id => params[:id])
	end

	# GET /users/:id/edit
	# Access level: Administrator
	def edit
		if current_user.try(:admin?)
			@user = User.find(params[:id])
		else
			flash[:alert] = "Sorry, you don't have the right privileges to edit a pest."
			redirect_to users_path
		end
	end

	# PUT /users/:id/edit
	# Access level: Administrator
	def update
		@user = User.find(params[:id])
		if @user.update(params[:user].permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode, :avatar))
			flash[:notice] = "Yay - profile successfully updated!"
			redirect_to users_path
		else
			render 'edit'
		end
	end

	# DELETE /users/:id
	# Access level: Administrator
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

	private

		# Permitted parameters when creating a user
		def user_params
			params.require(:user).permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode, :avatar)
		end

		# Admin verification method
		def verify_is_admin
			(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
		end

end
