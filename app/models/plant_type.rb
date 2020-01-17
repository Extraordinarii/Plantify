class PlantType < ApplicationRecord
    has_many :planttypes
    has_many :owners, through: :planttypes
end
