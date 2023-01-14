class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # validates :poster_url, presence: true
  # validates :rating, numericality: { greater_than_or_equal_to: 0 }
end
