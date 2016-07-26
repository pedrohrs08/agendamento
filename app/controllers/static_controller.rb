class StaticController < ApplicationController
	before_action :authenticate_user!
	
	def index
		unless current_user.donor_id.nil?
		 	response = DonorsServiceClient.get_donor current_user.donor_id
		 	@donor = JSON.parse(response.body)
	    end 
	end
end
