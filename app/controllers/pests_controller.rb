# @author Daniel Lekic
class PestsController < ApplicationController
	
	# GET /pests
 	# Access level: Anyone (no sign-in)
	def index
		@pests = Pest.all
		@types = PestType.all
		@colours = Colour.all
		@sources = Source.all
	end

	# GET /pests/new
  	# Access level: Signed-in user
	def new
		if user_signed_in?
		  @pest = Pest.new
	    else
	      flash[:alert] = "You must be signed in to register pests."
	      redirect_to pests_path
	    end
	end

	def create
 		@pest = Pest.new(pest_params)
		if @pest.save
			flash[:notice] = "Pest created succesfully."	
  			redirect_to @pest
  		else
  			render 'new'
  		end
	end

	def show
		@pest = Pest.find(params[:id])
	end

	def edit
		if current_user.try(:admin?)
			@pest = Pest.find(params[:id])
		else
			flash[:alert] = "You must be an administrator to edit pests"
			redirect_to :back
		end
	end

	def update
		@pest = Pest.find(params[:id])

		if @pest.update(params[:pest].permit(:name, :source_id, :tracker_id, :pest_type_id, :characteristics, {:marking_ids => []}, :colour_id, :size))
			flash[:notice] = "Pest updated successfully."
			redirect_to @pest
		else
			render 'edit'
		end
	end

	def destroy
		if current_user.try(:admin?)
			@pest = Pest.find(params[:id])
			@pest.destroy
			flash[:notice] = "Pest successfully deleted."
		else
			flash[:alert] = "You cannot delete a pest without admin rights."
		end
		redirect_to pests_path
	end

	private
  		def pest_params
    		params.require(:pest).permit(:name, :source_id, :tracker_id, :pest_type_id, :characteristics, {:marking_ids => []}, :colour_id, :size)
  		end
end
