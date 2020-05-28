class Bike < ApplicationRecord
  validates :name, presence: {message: "name is required"}
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :price, numericality: {greater_than: 0.00}

end
