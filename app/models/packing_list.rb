class PackingList < ApplicationRecord
    belongs_to :activity
    belongs_to :gear
end
