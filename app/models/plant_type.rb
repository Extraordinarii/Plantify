class PlantType < ApplicationRecord
    has_many :plants
    has_many :owners, through: :plants
    has_many :waterings
    has_many :owners, through: :waterings

    def self.search(search)
        where("species LIKE?", "%#{search}%")
    end

end
