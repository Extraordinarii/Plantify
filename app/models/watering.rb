class Watering < ApplicationRecord
    belongs_to :owner
    has_many :plant_waterings
end
