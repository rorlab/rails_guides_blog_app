class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { mininum: 10 }
end
