class Owner < ApplicationRecord
    has_many :planttypes
    has_many :plants, through: :planttypes
end
