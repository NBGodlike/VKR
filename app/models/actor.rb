class Actor < ApplicationRecord
  belongs_to :theate
  has_many :actor_structures
end
