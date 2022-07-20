class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        #present? checks if user is present. We get authenticate from our User.rb file.
        if user.present? && user.authenticate(params[:user_id])
            sessions[user:id] = user.id
            redirect_to root_path, notice: "logged in successfully"
       else
            flash[:alert] = "Invalid email or Password"
            render :new, status: :unprocessable_entity
       end
    end

    def destory
        session[:user_id] = nil
        redirect_to root_path, notice: "logged out"
    end
end
