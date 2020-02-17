class Review < ApplicationRecord
  RATES = (0..5)
  belongs_to :booking
  validates :rate, inclusion: { in: RATES }
end
