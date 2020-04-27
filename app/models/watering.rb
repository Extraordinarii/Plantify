class Watering < ApplicationRecord
    belongs_to :users
    belongs_to :plant_types

end
