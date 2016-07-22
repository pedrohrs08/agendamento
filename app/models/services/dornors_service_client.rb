class DonorsServiceClient
	URL = "http://localhost:3031/donors"

	def self.save_donor(donor)
	 	RestClient.post URL, :donor => donor	
	end
end