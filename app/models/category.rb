class Category < ApplicationRecord
    belongs_to :restaurant
    has_many :dishes, dependent: :destroy

    validates :restaurant_id, presence: true

end
