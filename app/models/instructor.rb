class Instructor < ApplicationRecord
  belongs_to :centre
  has_many :workshops
end
