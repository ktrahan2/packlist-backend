class Activity < ApplicationRecord
    has_many :default_lists
    has_many :gears, through: :default_lists
end
