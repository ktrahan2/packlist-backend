class User < ApplicationRecord
    has_many :packs
    has_many :selected_gears, through: :packs
end
