class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.integer :value
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
