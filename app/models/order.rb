class Order < ApplicationRecord
  belongs_to :showtime, optional: true
  

  def update_seat_count(movie_id, theater_id, showtime, quantity)
    current_showtimes = Showtime.where(theater_id: theater_id, movie_id: movie_id).pluck(:showtimes)[0]
    current_showtimes[showtime] -= quantity
    current_showtimes
  end
end
