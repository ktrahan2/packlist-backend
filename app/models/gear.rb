class Gear < ApplicationRecord
    has_many :packing_lists
    has_many :activities, through: :packing_lists
    has_many :user_packs
    has_many :users, through: :user_packs
end
