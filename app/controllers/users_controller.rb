class UsersController < ApplicationController

    def create
        user = User.new(username: params[:username], password: params[:password])

        if user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {"errors": user.errors.full_messages}, status: :unprocessable_entity
        end
    end

end
