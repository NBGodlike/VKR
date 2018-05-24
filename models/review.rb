class Review < ApplicationRecord
  belongs_to :perfomance
  validates :name, :surname, :patronymic, :content, presence: true
end
