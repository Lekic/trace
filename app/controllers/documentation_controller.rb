class DocumentationController < ApplicationController
  def index
  	if !current_user.try(:admin?)
  		flash[:alert] = "Sorry ladies. Admins only."
  		redirect_to index_path
  	end
  end
end
