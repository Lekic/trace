class WelcomeController < ApplicationController
  def index
  	if !user_signed_in?
  		flash[:alert] = "You must be signed in to view this page."
  		redirect_to root_path
  	end
  end
end
