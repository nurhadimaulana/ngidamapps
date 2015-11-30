class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :address
      t.integer :user_id
      t.integer :food_id
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
    add_index :locations, :user_id
    add_index :locations, :food_id
  end
end
