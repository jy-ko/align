class Workshop < ApplicationRecord
  belongs_to :centre
  has_many :bookings
  has_many :users, :through => :bookings

  validates :capacity, presence: true
  validates :centre_id, presence: true
  validates :date, presence: true
  validates :title, length: { minimum: 5, maximum: 100}
end
