class ScoresController < ApplicationController

    def index
        scores = Score.top_ten()
        render json: scores
        # render json: scores.to_json(:include [:username, :score])
    end

    def create 
        score = Score.create(user_id: params[:user_id], score: params[:score] )
        render json: score
    end


end
