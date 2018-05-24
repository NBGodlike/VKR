class Repertoire < ApplicationRecord
  belongs_to :theate
  has_many :perfomances,dependent: :destroy
  validates :producer, :genre, :name, presence: true

  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("repertoires.name LIKE ?", "%#{search}%")
  end


end
