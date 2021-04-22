class UsersController < ApplicationController


    def index
        users = User.all
        render json: users
        # render json: users.to_json(:include => {:id, :username}, :except => [:created_at, :updated_at])
    end

    def create 
        user = User.create(username: params[:username])
        render json: user
    end

end

