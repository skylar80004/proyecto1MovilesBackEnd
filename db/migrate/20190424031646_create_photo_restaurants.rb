class CreatePhotoRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_restaurants do |t|
      t.string :image_url
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
