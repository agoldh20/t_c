class Movie < ApplicationRecord
  has_many :orders
  has_many :showtimes
  has_many :theaters, through: :showtimes

  def friendly_time
    hour = runtime.to_i / 60
    minute = runtime.to_i % 60
    "#{hour}hr #{minute}min"
  end
end
