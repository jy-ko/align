class Booking < ApplicationRecord
  validates :user_id, presence: true
  validates :workshop_id, presence: true
end
