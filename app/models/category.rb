class Category < ApplicationRecord
    has_many :dishes, dependent: :destroy
    belongs_to :restaurant
    validates :name, presence: true
    validates :restaurant_id, presence: true

end
