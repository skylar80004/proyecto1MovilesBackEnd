json.extract! restaurant, :id, :name, :latitude, :longitude, :kind_food, :phone, :website, :price_type, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
