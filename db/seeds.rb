Movie.create!([
  {title: "Deadpool", rating: "R", runtime: 175, image_url: "http://www.imfdb.org/images/thumb/0/0e/DeadpoolPoster2015-3.jpg/300px-DeadpoolPoster2015-3.jpg"},
  {title: "Liar Liar", rating: "R", runtime: 87, image_url: nil},
  {title: "Top Gun", rating: "PG-13", runtime: 110, image_url: nil},
  {title: "Apollo 13", rating: "PG", runtime: 120, image_url: nil},
  {title: "Cars", rating: "G", runtime: 97, image_url: nil}
])

Theater.create!([
  {name: "North", seating_capacity: 20},
  {name: "South", seating_capacity: 30},
  {name: "East", seating_capacity: 40},
  {name: "West", seating_capacity: 50}
])

Showtime.create!([
  {showtimes: {"12:30"=>20, "13:30"=>20, "14:30"=>20}, movie_id: 2, theater_id: 1},
  {showtimes: {"10:00"=>20, "11:00"=>20, "12:00"=>20, "13:00"=>20, "14:00"=>20}, movie_id: 3, theater_id: 1},
  {showtimes: {"12:30"=>20, "13:30"=>20, "14:30"=>20}, movie_id: 4, theater_id: 1},
  {showtimes: {"12:30"=>20, "13:30"=>20, "14:30"=>20}, movie_id: 3, theater_id: 2},
  {showtimes: {"12:30"=>20, "13:30"=>20, "14:30"=>20}, movie_id: 5, theater_id: 1},
  {showtimes: {"10:25"=>50, "11:25"=>50, "12:25"=>50, "13:25"=>50, "14:025"=>50}, movie_id: 1, theater_id: 4},
  {showtimes: {"10:00"=>16, "11:00"=>20, "12:00"=>18, "13:00"=>20, "14:00"=>20}, movie_id: 1, theater_id: 1}
])
