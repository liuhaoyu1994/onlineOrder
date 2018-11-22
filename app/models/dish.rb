class Dish < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :category_id, presence: true
  mount_uploader :photo, PhotoUploader

end
