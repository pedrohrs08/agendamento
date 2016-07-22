class DonorController < ApplicationController
  def new
  	@donor = Donor.new
  end

  def create
  	DonorsServiceClient.save_donor donor_params
  end

  private 
  def donor_params
  	params.require(:donor).permit!
  end
end
