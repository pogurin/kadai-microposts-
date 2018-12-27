class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  has_many :like_users, through: :likes , source: :user
  has_many:likes
end
