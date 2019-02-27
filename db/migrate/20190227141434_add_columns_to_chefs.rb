class AddColumnsToChefs < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :first_name, :string
    add_column :chefs, :last_name, :string
  end
end
