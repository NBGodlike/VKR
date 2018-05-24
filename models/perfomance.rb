class Perfomance < ApplicationRecord
  belongs_to :play_ground
  belongs_to :repertoire
  has_many :actor_structures,dependent: :destroy
  has_many :reviews,dependent: :destroy
  has_many :tickets,dependent: :destroy
  validates :status, :date, presence: true

  def f_name
    'Название: ' + repertoire.name + ' Дата: '+ date.to_s
  end
end
