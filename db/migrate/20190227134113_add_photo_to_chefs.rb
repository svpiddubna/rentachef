class AddPhotoToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :photo, :string
  end
end
