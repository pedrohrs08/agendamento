class DonorsServiceClient
	URL = ENV['donors_url']

	def self.save_donor(donor)
	 	RestClient.post URL, :donor => donor	
	end

	def self.get_donor(donor_id)
	 	RestClient.get URL + "/#{donor_id}"	
	end
end