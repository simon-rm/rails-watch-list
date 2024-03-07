class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :movie_list
  validates :comment, length: { minimum: 6 }
  validates [:movie, :movie_list], uniqueness: true
end
