class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :cuisine
      t.text :description
      t.integer :rate
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
