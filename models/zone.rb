class Zone < ApplicationRecord
  belongs_to :play_ground
  has_many :seats, dependent: :destroy
  validates :number, :price, presence: true
end
