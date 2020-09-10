class User < ApplicationRecord
    has_many :user_packs
    has_many :gears, through: :user_packs

    validates :username, uniqueness: true
end
