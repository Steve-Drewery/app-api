class SetNumber < ApplicationRecord
    validates :reps, presence: true
    validates :weight, presence: true

    belongs_to :exercise

    def self.find_by_exercise(input)
        exercise = SetNumber.find_by(exercise_id: input)
        return self.where(exercise_id: exercise)
    end
end
