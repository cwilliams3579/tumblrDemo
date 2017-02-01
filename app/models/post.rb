class Post < ApplicationRecord
  vaildates :title, :body, presence: true
end
