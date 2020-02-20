class Post < ApplicationRecord
  validates :slug, :title, :body, presence: true
  validates :slug, :title, uniqueness: true
end
