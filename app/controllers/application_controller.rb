class ApplicationController < ActionController::Base
    #Sends the user to the login page if they are not logged in, before viewing ANY page
    before_action :authenticate_user!

 
    ########  All steps below this are to add 'first_name and last_name' to the user  ########
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end
    ############  End all first_name and last_name  ##############################
end
