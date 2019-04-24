class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :start
      t.string :end
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
