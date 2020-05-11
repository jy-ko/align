class Centre < ApplicationRecord
    has_many :workshops
    has_many :instructors

    validates :name, presence: true
    validates :location, presence: true
    
end
