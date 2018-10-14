class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :categories, dependent: :destroy
    validates :user_id, presence:true
    validates :name, presence: true, length: { maximum: 20 }
    validates :address, presence: true, length: { maximum: 100 }
    mount_uploader :photo, PhotoUploader

end
