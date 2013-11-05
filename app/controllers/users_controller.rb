class UsersController < ApplicationController

	# GET /users
	def index
		if current_user.try(:admin?)
			@users = User.all.order(:name)
		else
			flash[:alert] = "Only admins can access the users page."
			redirect_to index_path
		end
	end
	
	# GET /users/new
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
		if current_user.try(:admin?)
			@user = User.find(params[:id])
		else
			flash[:alert] = "Only admins can edit users."
			redirect_to users_path
		end
	end

	def update
		@user = User.find(params[:id])

		if @user.update(params[:user].permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode))
			flash[:notice] = "User updated successfully."
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

	def phones
		Phones.where(:user_id => @user.id).order('id').all
	end

	def has_sighting?(sighting)
  		self.sighting.exists?(id: sighting.id)
	end

	private
  		def user_params
    		params.require(:user).permit(:employee_id, :name, :email, :date_of_birth, :username, :password, :date_joined, :park_id, :contact_number, :person_type_id, :admin, :street_number, :street_name, :suburb, :state, :postcode)
  		end
		def verify_is_admin
			(current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
		end
end
