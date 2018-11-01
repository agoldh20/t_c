# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!(title: "Deadpool",
              runtime: 175,
              rating: "R",
              showtimes: [{"10:00"=> 20},
                         {"11:00"=> 20},
                         {"12:00"=> 20},
                         {"13:00"=> 20},
                         {"14:00"=> 20}],
              image_url: "http://www.imfdb.org/images/thumb/0/0e/DeadpoolPoster2015-3.jpg/300px-DeadpoolPoster2015-3.jpg")

