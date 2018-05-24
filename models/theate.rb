class Theate < ApplicationRecord
  validates :address, :telefon, :name, presence: true
  mount_uploader :image, ImageUploader
  has_many :comments,dependent: :destroy
  has_many :leaders,dependent: :destroy
  has_many :actors,dependent: :destroy
  has_many :repertoires,dependent: :destroy
  has_many :like_comments, -> { where "comments.like = 1"},
    class_name: "Comment"
  def self.search(search)
    # Title is for the above case, the OP incorrectly had 'name'
    where("theates.name LIKE ?", "%#{search}%")
  end
end
