class ActorStructure < ApplicationRecord
  belongs_to :actor
  belongs_to :perfomance
  validates :role, presence: true
end
