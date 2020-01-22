class Owner < ApplicationRecord
    # has_secure_password
    has_many :plants
    has_many :plant_types, through: :plants
    has_many :waterings
end
