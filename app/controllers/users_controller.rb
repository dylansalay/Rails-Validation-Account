class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        puts @user.errors.full_messages

        if @user.valid?
            flash.now[:notice] = "Your credentials are valid"
        end

        render 'new'
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
    end

end
