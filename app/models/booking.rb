class Booking < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
  validates :start_time, :end_time, presence: true
end
