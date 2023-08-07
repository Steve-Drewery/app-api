class AddExerciseToSetNumbers < ActiveRecord::Migration[6.1]
  def change
    add_reference :set_numbers, :exercise
  end
end
