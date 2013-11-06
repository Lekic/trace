# @author Daniel Lekic and Hayden Bleasel
class WelcomeController < ApplicationController

	# GET /welcome
	# Access level: User
	def index
		if user_signed_in?
			@pests = Pest.all
			@pests_today = Pest.find(:all, :conditions => ["DATE(created_at) = DATE(?)", Time.now])
			@sightings = Sighting.all
			@sightings_today = Sighting.find(:all, :conditions => ["DATE(created_at) = DATE(?)", Time.now])
			@users = User.all
		else
			flash[:alert] = "Sorry, no can do. Come back when you're logged in!"
			redirect_to root_path
		end
	end
	
end