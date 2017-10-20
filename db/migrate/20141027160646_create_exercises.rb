class CreateExercises < ActiveRecord::Migration[4.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.references :workout, index: true

      t.timestamps
    end
  end
end
