class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
  	if user_signed_in?
  		pages_photos_path
  	end
end
def after_sign_out_path_for(resource)
  	if user_signed_in?
  		user_session_path
	end
end
end