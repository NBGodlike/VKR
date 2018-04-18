class Repertoire < ApplicationRecord
  belongs_to :theate
  has_many :perfomances
end
