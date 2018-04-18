class Zone < ApplicationRecord
  belongs_to :play_ground
  has_many :seats
end
