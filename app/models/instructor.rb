class Instructor < ApplicationRecord
  belongs_to :centre
  has_many :workshops

  validates :centre_id, presence: true
  validates :name, presence: true

end
