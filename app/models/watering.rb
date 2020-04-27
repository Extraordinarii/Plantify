class Watering < ApplicationRecord
    belongs_to :owner, optional: true
    belongs_to :plant_type

end
