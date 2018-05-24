class Actor < ApplicationRecord
  belongs_to :theate
  has_many :actor_structures, dependent: :destroy
  validates :name, :surname, :patronymic, presence: true
  def full_name
    surname+' '+name+' '+patronymic
  end
end
