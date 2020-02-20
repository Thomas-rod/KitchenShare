class Booking < ApplicationRecord
  PROPERTY_OPTIONS = ['pending', 'accepted', 'denied']

  belongs_to :kitchen
  belongs_to :user
  validates :start_time, :end_time, presence: true
  validates :statut, inclusion: { in: [ true, false ] }
  validates_inclusion_of :accepted, :in =>  PROPERTY_OPTIONS
end
