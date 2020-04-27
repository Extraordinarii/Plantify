class Plant < ApplicationRecord
    belongs_to :plant_type
    belongs_to :owner
    # validates :name, presence :true
end
