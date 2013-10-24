class SightingsController < ApplicationController
	def index
		@sightings = Sighting.all
  	end

  	def new
  		@sighting = Sighting.new
  	end

  	def create
  		@sighting = Sighting.new(sighting_params)
		if @sighting.save	
  			redirect_to @sighting
  		else
  			render 'new'
  		end
	end

  	def show
  		@sighting = Sighting.find(params[:id])
  	end

  	def edit
  		@sighting = Sighting_params.find(params[:id])
  	end

  	def update
		@sighting = Sighting.find(params[:id])

		if @sighting.update(params[:sighting].permit(:latitude, :longitude))
			redirect_to @sighting
		else
			render 'edit'
		end
	end

	def destroy
		@sighting = Sighting.find(params[:id])
		@sighting.destroy

		redirect_to sightings_path #check if you can reuse code
	end

	private
  		def sighting_params
    		params.require(:sighting).permit(:latitude, :longitude) #change params
  		end
  		
end
