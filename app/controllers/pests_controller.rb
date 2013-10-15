class PestsController < ApplicationController
	def index
		@pests = Pest.all
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
		@pest = pest_params.find(params[:id])
	end

	def update
		@pest = Pest.find(params[:id])

		if @pest.update(params[:pest].permit(:name))
			redirect_to @pest
		else
			render 'edit'
		end
	end

	def destroy
		@pest = Pest.find(params[:id])
		@pest.destroy

		redirect_to pests_path #check if you can reuse code
	end

	private
  		def pest_params
    		params.require(:pest).permit(:name)
  		end
end
