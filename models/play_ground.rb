class PlayGround < ApplicationRecord
  has_many :zones,dependent: :destroy
  has_many :perfomances,dependent: :destroy
  validates :address, :seats, presence: true
end
