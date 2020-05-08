class Workshop < ApplicationRecord
  belongs_to :centre
  belongs_to :instructor
  has_many :bookings
  has_many :users, :through => :bookings
end
