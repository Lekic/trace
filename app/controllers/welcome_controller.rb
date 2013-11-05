class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		flash[:alert] = "You must be signed in to view this page."
  		redirect_to root_path
  	end
  	@pests = Pest.all
	@sightings = Sighting.all
	@users = User.all
  end
end
