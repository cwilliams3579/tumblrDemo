class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 3..25 }
  validates :body, presence: true, length: { minimum: 5 }
end
