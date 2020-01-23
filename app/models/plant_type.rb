class PlantType < ApplicationRecord
    has_many :plants
    has_many :owners, through: :plants

    def self.search(search)
        where("species LIKE?", "%#{search}%")
    end

end
