# @author Daniel Lekic
class SightingsController < ApplicationController
	
  # Handles a GET request to /sightings
  # Accessible to anyone (no sign-in)
  # @return [Sighing] all the sightings in the system
  def index
		@sightings = Sighting.all
    @types = PestType.all
	end

  # Handles a GET request to /sightings/new
  # Accessible to signed-in users
  # @returns [Sighting] a new sighting object
	def new
    if user_signed_in?
		  @sighting = Sighting.new
    else
      flash[:alert] = "Sorry, you've gotta sign in to register sightings!"
      redirect_to sightings_path
    end
	end

  # Handles a POST request to /sightings/new
  # Accessible to signed-in users
  # @returns [Path] to the following page (sighting or new form)
	def create
		@sighting = Sighting.new(sighting_params)
    @sighting.user = current_user
    if @sighting.save	
      flash[:notice] = "Yay - sighting successfully created!" 
			redirect_to @sighting
		else
			render 'new'
		end
	end

  # Handles a GET request to /sightings/{id}
  # Accessible to anyone (no sign-in)
  # @returns [Sighting] a single sighting
	def show
		@sighting = Sighting.find(params[:id])
	end

  # Handles a GET request to /sightings/{id}/edit
  # Accessible to administrators or sighting creators
  # @returns [Path] to the sighting page
	def edit
		@sighting = Sighting.find(params[:id])
    if !current_user.try(:admin?) && !current_user.id == @sighting.user_id
      flash[:alert] = "Oi, edit your own sightings!"
      redirect_to @sighting
    end
	end

  # Handles a PUT request to /sightings/{id}
  # Accessible to administrators and sighting creators
  # @returns [Path] to the following page (sighting or edit form)
	def update
	@sighting = Sighting.find(params[:id])
  	if @sighting.update(params[:sighting].permit(:pest_id, :park_id, :quantity, :time_sighted, :information))
      flash[:notice] = "Yay - pest successfully updated!"
  		redirect_to @sighting
  	else
  		render 'edit'
  	end
	end

  # Handles a DELETE request to /sightings/{id}
  # Accessible to administrators and sighting creators
  # @returns [Path] to the sightings page
	def destroy
		@sighting = Sighting.find(params[:id])
    if current_user.try(:admin?) || current_user.id == @sighting.user_id
  		@sighting.destroy
    else
      flash[:alert] = "Yay - sighting successfully deleted!"
    end
		redirect_to sightings_path
	end

  # Permitted parameters when creating a sighting
	private
  		def sighting_params
    		params.require(:sighting).permit(:pest_id, :park_id, :quantity, :time_sighted, :information) #change params
  		end
  		
end
