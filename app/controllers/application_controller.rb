class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  def after_sign_in_path_for(resource)
  	if current_user.donor_id.nil? 
  		'/donors/new'
  	else
  		root_path
  	end
  end
end
