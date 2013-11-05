class SightingsController < ApplicationController
	
  # GET /sightings
  def index
		@sightings = Sighting.all
	end

  # GET /sightings/new
	def new
    if user_signed_in?
		  @sighting = Sighting.new
    else
      flash[:alert] = "You must be signed in to create a sighting."
      redirect_to sightings_path
    end
	end

  # POST /sightings
	def create
		@sighting = Sighting.new(sighting_params)
    @sighting.user = current_user
    if @sighting.save	
      flash[:notice] = "Sighting created successfully."
			redirect_to @sighting
		else
			render 'new'
		end
	end

  # GET /sightings/1
	def show
		@sighting = Sighting.find(params[:id])
	end

  # GET /sightings/1/edit
	def edit
    if current_user.try(:admin?) || current_user.has_sighting?(@sighting)
		  @sighting = Sighting.find(params[:id])
    else
      flash[:alert] = "You can't edit a sighting that is not yours."
      redirect_to @sighting
    end
	end

  # PUT /sightings/1
	def update
	@sighting = Sighting.find(params[:id])
  	if @sighting.update(params[:sighting].permit(:pest_id, :park_id, :quantity, :time_sighted, :information))
      flash[:notice] = "Sighting updated successfully."
  		redirect_to @sighting
  	else
  		render 'edit'
  	end
	end

  # DELETE /sightings/1
	def destroy
    if current_user.try(:admin?) || current_user.has_sighting?(@sighting)
  		@sighting = Sighting.find(params[:id])
  		@sighting.destroy
    else
      flash[:alert] = "You cannot delete a sighting without correct privledges."
    end
		redirect_to sightings_path
	end

	private
  		def sighting_params
    		params.require(:sighting).permit(:pest_id, :park_id, :quantity, :time_sighted, :information) #change params
  		end
  		
end
