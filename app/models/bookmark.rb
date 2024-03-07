class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :movie_list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :movie_list_id }
end
