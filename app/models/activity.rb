class Activity < ApplicationRecord
    has_many :packing_lists
    has_many :gears, through: :packing_lists
end
