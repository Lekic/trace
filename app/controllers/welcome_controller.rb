class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		flash[:alert] = "You must be signed in to view this page."
  		redirect_to root_path
  	end
  	@pests = Pest.all
  	@new_pests = Pest.find(:all, :conditions => ["DATE(created_at) = DATE(?)", Time.now])
	@sightings = Sighting.all
	@new_sightings = Sighting.find(:all, :conditions => ["DATE(created_at) = DATE(?)", Time.now])
	@users = User.all
  end
end
