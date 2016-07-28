class DonorController < ApplicationController
  def new
  	
  end

  def create
  	p "oi"
  	response = DonorsServiceClient.save_donor donor_params
  	p "oi"
  	p response
    saved_donor = JSON.parse(response.body)
    
    current_user.donor_id = saved_donor['_id']['$oid']
    current_user.save

    respond_to do |format|
      format.json { render :json => JSON.parse(response.body) }
    end
  end

  private 
  def donor_params
  	params.require(:donor).permit!
  end
end
