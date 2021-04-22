class UsersController < ApplicationController


    def index
        users = User.all
        render json: users
        # render json: users.to_json(:include => {:id, :username}, :except => [:created_at, :updated_at])
    end


end

# class UserSerializer

#     def initialize(user_object)
#         @user = user_object
#     end

#     def to_serialized_json
#         @users.to_json(:include => {
#         :username,
#         :id },
#         :except => [:updated_at, :created_at])
#     end

# end
