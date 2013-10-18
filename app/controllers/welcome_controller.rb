class WelcomeController < ApplicationController
	def index
		@pests = Pest.all
	end
end
