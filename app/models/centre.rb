class Centre < ApplicationRecord
    has_many :workshops
    has_many :instructors
end
