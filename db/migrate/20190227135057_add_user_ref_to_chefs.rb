class AddUserRefToChefs < ActiveRecord::Migration[5.2]
  def change
    add_reference :chefs, :user, foreign_key: true
  end
end
