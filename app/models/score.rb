class Score < ApplicationRecord

    belongs_to :user

    def self.top_ten()

        scores_hash = []

        max_to_min = Score.order(score: :desc)

        max_to_min[0..9].each do |score|
            
            temp_hash = {}
            temp_hash[:username] = score.user.username
            temp_hash[:score] = score.score
            temp_hash[:date] = score.created_at


            scores_hash << temp_hash
        end

        return scores_hash
    
    end
end
