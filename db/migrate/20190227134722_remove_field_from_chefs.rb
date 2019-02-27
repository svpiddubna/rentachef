class RemoveFieldFromChefs < ActiveRecord::Migration[5.2]
  def change
    remove_column :chefs, :first_name, :string
    remove_column :chefs, :last_name, :string
  end
end
