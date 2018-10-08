class Restaurant < ApplicationRecord
    belongs_to :user
    validates :user_id, presence:true
    validates :name, presence: true, length: { maximum: 20 }
    validates :address, presence: true, length: { maximum: 100 }
    mount_uploader :photo, PhotoUploader

end
