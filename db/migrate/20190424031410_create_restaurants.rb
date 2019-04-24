class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :kind_food
      t.string :phone
      t.text :website

      t.timestamps
    end
  end
end
