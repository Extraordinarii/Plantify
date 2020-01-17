class PlantType < ApplicationRecord
    has_many :plant_types
    has_many :owners, through: :plant_types
end
