class Perfomance < ApplicationRecord
  belongs_to :playground
  belongs_to :repertoire
  has_many :actor_structures
  has_many :reviews
  has_many :tickets
end
