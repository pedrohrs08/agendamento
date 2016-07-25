class DonorController < ApplicationController
  def new
  	
  end

  def create
  	response = DonorsServiceClient.save_donor donor_params
    p response.to_json
    respond_to do |format|
      format.json { render :json => response.body }
    end
  end

  private 
  def donor_params
  	params.require(:donor).permit!
  end
end
