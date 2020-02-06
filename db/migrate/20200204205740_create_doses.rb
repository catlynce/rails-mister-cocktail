class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :ingredient, foreign_key: true
      t.references :cocktail, foreign_key: true

      t.timestamps
    end

    add_index :doses, [:ingredient_id, :cocktail_id], unique: true
  end
end
