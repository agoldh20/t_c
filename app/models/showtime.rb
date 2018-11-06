class Showtime < ApplicationRecord
  belongs_to :theater
  belongs_to :movie
  has_many :orders
end
