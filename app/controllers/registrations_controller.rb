class RegistrationsController < ApplicationController
    def new
        #@user makes it an instant variable making it global.
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            #user session over cookies, Users can change cookies to another users, 
            #User can not change sessions
            session[:user_id] =@user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new, status: :unprocessable_entity
         end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end