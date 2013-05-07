class ApplicationController < ActionController::Base
  
  protect_from_forgery

  after_filter :authenticate_user!


end
