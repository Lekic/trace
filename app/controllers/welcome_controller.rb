class WelcomeController < ApplicationController
	def index
		@pests = { :pests => Pest.all }
	end
end
