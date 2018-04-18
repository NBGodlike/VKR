class Theate < ApplicationRecord
has_many :comments
has_many :leaders
has_many :actors
has_many :repertoires
end
