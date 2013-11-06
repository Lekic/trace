# @author Daniel Lekic and Hayden Bleasel
class PestsController < ApplicationController

	# GET /pests
	# Access level: All
	def index
		@pests = Pest.all
		@types = PestType.all
		@colours = Colour.all
		@sources = Source.all
	end

	# GET /pests/new
	# Access level: User
	def new
		if user_signed_in?
			@pest = Pest.new
		else
			flash[:alert] = "Sorry, you have to sign in to register pests!"
			redirect_to pests_path
		end
	end

	# PUT /pests/new
	# Access level: User
	def create
		@pest = Pest.new(pest_params)
		if @pest.save
			flash[:notice] = "Yay - pest successfully created!"	
			redirect_to pests_path
		else
			render 'new'
		end
	end

	# GET /pests/:id/edit
	# Access level: Administrator
	def edit
		if current_user.try(:admin?)
			@pest = Pest.find(params[:id])
		else
			flash[:alert] = "Sorry, you don't have the right privileges to edit a pest."
			redirect_to :back
		end
	end

	# PUT /pests/:id
	# Access level: Administrator
	def update
		@pest = Pest.find(params[:id])
		if @pest.update(params[:pest].permit(:name, :source_id, :tracker_id, :pest_type_id, :characteristics, {:marking_ids => []}, :colour_id, :size))
			flash[:notice] = "Yay - pest successfully updated!"
			redirect_to pests_path
		else
			render 'edit'
		end
	end

	# DELETE /pests/:id
	# Access level: Administrator
	def destroy
		if current_user.try(:admin?)
			@pest = Pest.find(params[:id])
			@pest.destroy
			flash[:notice] = "Yay - pest successfully deleted!"
		else
			flash[:alert] = "Sorry, you don't have the right privileges to delete a pest."
		end
		redirect_to pests_path
	end

	private
	
		# Permitted parameters when creating a pest
		def pest_params
			params.require(:pest).permit(:name, :source_id, :tracker_id, :pest_type_id, :characteristics, {:marking_ids => []}, :colour_id, :size)
		end
end