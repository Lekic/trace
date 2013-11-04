class PestsController < ApplicationController
	def index
		@pests = Pest.all
		@types = PestType.all
		@colours = Colour.all
		@sources = Source.all
	end

	def new
		@pest = Pest.new
	end

	def create
 		@pest = Pest.new(pest_params)
		if @pest.save	
  			redirect_to @pest
  		else
  			render 'new'
  		end
	end

	def show
		@pest = Pest.find(params[:id])
	end

	def edit
		if user_signed_in?
			@pest = Pest.find(params[:id])
		else
			flash[:alert] = "You must be signed in to edit pests"
			redirect_to :back
		end
	end

	def update
		@pest = Pest.find(params[:id])

		if @pest.update(params[:pest].permit(:name, :source_id, :tracker_id, :pest_type_id, :characteristics, {:marking_ids => []}, :colour_id, :size))
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
