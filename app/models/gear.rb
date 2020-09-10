class Gear < ApplicationRecord
    has_many :default_lists
    has_many :activities, through: :default_lists
    has_many :selected_gear
    has_many :packs, through: :selected_gear
end
