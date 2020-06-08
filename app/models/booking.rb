class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :user
  validates :user_id, presence: true
  validates :workshop_id, presence: true
  
end
