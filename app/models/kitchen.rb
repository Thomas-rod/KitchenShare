class Kitchen < ApplicationRecord
  CAPACITY = (1..5)
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photos
  validates :city, :address, :capacity, :name, :equipment, :price_by_hour, presence: true
end
