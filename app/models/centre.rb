class Centre < ApplicationRecord
    has_many :workshops

    validates :name, presence: true
    validates :location, presence: true
end
