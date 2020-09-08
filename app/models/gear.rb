class Gear < ApplicationRecord
    has_many :packing_lists
    has_many :activities, through: :packing_lists
end
