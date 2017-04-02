class Post < ActiveRecord::Base
  validates :slug, :title, :body, presence: true
  validates :slug, :title, uniqueness: true
end
