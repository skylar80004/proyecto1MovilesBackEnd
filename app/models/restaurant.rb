class Restaurant < ApplicationRecord
	validates_uniqueness_of :name

	has_many :comments
	has_many :schedules
	has_many :stars
	has_many :photo_restaurants

	include PgSearch
  pg_search_scope :search_by_information, against: [:kind_food, :price_type, :name], using: :tsearch
end
