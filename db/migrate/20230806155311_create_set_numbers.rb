class CreateSetNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :set_numbers do |t|
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
