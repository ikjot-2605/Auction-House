class ApplicationController < ActionController::Base
    #if user is not logged in, then takes to login/signup page
    before_action :authenticate_user!  
end
