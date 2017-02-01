class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..25 }
  validates :body, presence: true, length: { in: 5..55 }
end
