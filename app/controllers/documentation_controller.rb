# @author Daniel Lekic and Hayden Bleasel
class DocumentationController < ApplicationController

	# GET /documentation
	# Access level: Administrators
	def index
		if !current_user.try(:admin?)
			flash[:alert] = "Sorry ladies. Admins only."
			redirect_to index_path
		end
	end

end