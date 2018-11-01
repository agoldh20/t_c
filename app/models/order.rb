class Order < ApplicationRecord
  belongs_to :movie, optional: true

  def update_seat_count(movie_id, showtime)
    current_showtimes = Movie.find(movie_id).showtimes
    current_showtimes[showtime] # working on updating hash here

  end
end
