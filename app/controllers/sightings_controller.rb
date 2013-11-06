# @author Daniel Lekic and Hayden Bleasel
class SightingsController < ApplicationController
	
	# GET /sightings
	# Access level: All
	def index
		@sightings = Sighting.all
		@types = PestType.all
	end

	# GET /sightings/new
	# Access level: User
	def new
		if user_signed_in?
			@sighting = Sighting.new
		else
			flash[:alert] = "Sorry, you have to sign in to register sightings!"
			redirect_to sightings_path
		end
	end

	# PUT /sightings/new
	# Access level: All
	def create
		@sighting = Sighting.new(sighting_params)
		@sighting.user = current_user
		if @sighting.save	
			flash[:notice] = "Yay - sighting successfully created!" 
			redirect_to sightings_path
		else
			render 'new'
		end
	end

	# GET /sightings/:id/edit
	# Access level: User
	def edit
		if current_user.try(:admin?) || current_user.id == Sighting.find(params[:id]).user_id
			@sighting = Sighting.find(params[:id])
		else
			flash[:alert] = "Oi, edit your own sightings!"
			redirect_to sightings_path
		end
	end

	# PUT /sightings/:id/edit
	# Access level: User
	def update
		@sighting = Sighting.find(params[:id])
		if @sighting.update(params[:sighting].permit(:pest_id, :park_id, :quantity, :time_sighted, :information))
			flash[:notice] = "Yay - pest successfully updated!"
			redirect_to sightings_path
		else
			render 'edit'
		end
	end

	# DELETE /sightings/:id
	# Access level: User
	def destroy
		@sighting = Sighting.find(params[:id])
		if current_user.try(:admin?) || current_user.id == @sighting.user_id
			@sighting.destroy
			flash[:notice] = "Yay - sighting successfully deleted!"
		else
			flash[:alert] = "Sorry, no can do."
		end
		redirect_to sightings_path
	end

	private

		# Permitted parameters when creating a sighting
		def sighting_params
			params.require(:sighting).permit(:pest_id, :park_id, :quantity, :time_sighted, :information) #change params
		end

end