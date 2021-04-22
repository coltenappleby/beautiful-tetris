class ScoresController < ApplicationController

    def index
        scores = Score.top_ten()
        render json: scores
        render json: scores.to_json(:include [:user, :score])
    end

    def create 
        score = Score.create(user_id: params[:id], score: parms[:score] )
        render json: score
    end


end
