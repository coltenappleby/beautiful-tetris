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

    def destroy
        score = Score.find_by(id: params[:id])
        score.delete()
        render json: {deleted: "yes"}
    end


end
