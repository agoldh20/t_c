class Order < ApplicationRecord
  belongs_to :movie, optional: true

  def update_seat_count(movie_id, showtime, quantity)
    current_showtimes = Movie.find(movie_id).showtimes
    current_showtimes[showtime] -= quantity
    current_showtimes
  end
end
