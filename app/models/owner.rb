class Owner < ApplicationRecord
    has_many :plants
    has_many :plnt_typess, through: :plants
end
