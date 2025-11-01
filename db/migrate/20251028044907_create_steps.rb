class CreateSteps < ActiveRecord::Migration[8.0]
  def change
    create_table :steps do |t|
      t.references :rice_ball, null: false, foreign_key: true
      t.text :description
      t.integer :step_number

      t.timestamps
    end
  end
end
