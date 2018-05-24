class Leader < ApplicationRecord
  validates :job, :telefon, :name, :surname, :patronymic, presence: true
  belongs_to :theate
end
