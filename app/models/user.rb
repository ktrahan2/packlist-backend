class User < ApplicationRecord
    has_many :packs
    has_many :selected_gears, through: :packs

    validates :username, uniqueness: true
end
