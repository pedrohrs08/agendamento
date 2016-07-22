class DonorController < ApplicationController
  def new
  	@donor = Donor.new
  end
end
