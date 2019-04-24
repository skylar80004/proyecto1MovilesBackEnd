json.extract! photo_restaurant, :id, :image_url, :restaurant_id, :created_at, :updated_at
json.url photo_restaurant_url(photo_restaurant, format: :json)
