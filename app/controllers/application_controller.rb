class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def not_authenticated
    redirect_to login_url, :notice =>  "First log in to view this page."
  end

  rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Access denied!"
	  redirect_to root_url
  end
end
