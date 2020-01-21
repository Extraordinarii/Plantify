class Owner < ApplicationRecord
    has_many :plants
    has_many :plants, through: :plants
end
