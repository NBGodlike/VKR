class Seat < ApplicationRecord
  belongs_to :zone
  has_many :tickets,dependent: :destroy
  validates :row, :numseat, presence: true
end
