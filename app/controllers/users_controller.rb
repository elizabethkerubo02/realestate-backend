class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid

    def index
        users = User.all
        render json: users , status: :ok
    end
   
    def create 
       user = User.create!(user_params)
       session[:user_id] = user.id
       render json: user, status: :created
       end

       private

       def user_params
        params.permit(:username, :password, :password_confirmation)
       end

       def invalid(e)
        render json: {errors: e.record.errors.full_messages}, status: 422

       end
end
