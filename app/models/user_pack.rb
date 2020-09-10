class UserPack < ApplicationRecord
  belongs_to :user
  belongs_to :gear
end
