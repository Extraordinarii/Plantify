class Plant < ApplicationRecord
    belongs_to :planttype
    belongs_to :owner
end
