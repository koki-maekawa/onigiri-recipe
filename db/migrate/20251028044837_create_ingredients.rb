class CreateIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredients do |t|
      t.references :rice_ball, null: false, foreign_key: true
      t.string :name
      t.string :amount

      t.timestamps
    end
  end
end
