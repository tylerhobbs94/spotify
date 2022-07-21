class MainController < ApplicationController
    before_action :authenticate

    def authenticate
      redirect_to "/sign_in" unless current_user
    end
    
    def index
    end
end