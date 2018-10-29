class Dish < ApplicationRecord
  belongs_to :category
  validates :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

end
