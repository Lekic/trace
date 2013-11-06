# @author Daniel Lekic and Hayden Bleasel
class RegistrationsController < Devise::RegistrationsController

	protected
	
		# Redirects user to specified page after update
		# Access level: User
		def after_update_path_for(resource)
			user_path(resource)
		end

end