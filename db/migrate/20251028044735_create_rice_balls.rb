class CreateRiceBalls < ActiveRecord::Migration[8.0]
  def change
    create_table :rice_balls do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
