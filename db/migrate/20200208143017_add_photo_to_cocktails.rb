class AddPhotoToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :photo, :string, default: nil
  end
end