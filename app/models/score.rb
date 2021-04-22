class Score < ApplicationRecord

    belongs_to :user

    def top_ten()

        max_to_min = Score.all.sort

        return max_to_min[0...9]
    end
end
