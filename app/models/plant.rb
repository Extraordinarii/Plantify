class Plant < ApplicationRecord
    belongs_to :plant_type
    belongs_to :owner
    has_many :waterings
end
