class Kitchen < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  # validates :city, :address, :capacity, :name, :equipment, :price_by_hour, presence: true
end
