class Comment < ApplicationRecord
  belongs_to :theate
  validates :content, presence: true
end
