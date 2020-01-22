class PlantWatering < ApplicationRecord
    belongs_to :plant
    belongs_to :watering
end
