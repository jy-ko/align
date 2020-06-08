class Workshop < ApplicationRecord
  belongs_to :centre

  validates :capacity, presence: true
  validates :centre_id, presence: true
  validates :date, presence: true
  validates :title, length: { minimum: 5, maximum: 100}

  include PgSearch::Model
  pg_search_scope :search_by_workshop,
    against: [ :title ],
    associated_against: {
      centre: [ :name, :location ]
    },
    using: {
      tsearch: { prefix: true }
    }

    def booked?(current_user, workshop_i)
      Booking.where(user_id: current_user.id, workshop_id: workshop_i).exists?
    end

end
