class AddPriceTypeToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :price_type, :string
  end
end
