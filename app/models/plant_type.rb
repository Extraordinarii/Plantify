class PlantType < ApplicationRecord
    has_many :plants
    has_many :owners, through: :plants
end
