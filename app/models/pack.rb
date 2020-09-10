class Pack < ApplicationRecord
  belongs_to :user
  has_many :selected_gears
end
