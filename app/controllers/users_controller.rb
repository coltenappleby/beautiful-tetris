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

    def show
        user = User.find_by(id: params[:id])
        render json: user.scores
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(username: params[:username])
        render json: user
    end


end

