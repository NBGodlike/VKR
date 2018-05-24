class Ticket < ApplicationRecord
  belongs_to :seat
  belongs_to :perfomance
  validates :selldate, :numticket, presence: true
end
