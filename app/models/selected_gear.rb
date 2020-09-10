class SelectedGear < ApplicationRecord
  belongs_to :pack
  belongs_to :gear
end
