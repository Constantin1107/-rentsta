# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Listing.destroy_all

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685502474/k9ozug4myaywgl2zj4q8.jpg")
listing_one = Listing.create(name: "Rhein-Energie Stadion", address: "Cologne", user_id: 1, price: 200_000, description: "Awesome", capacity: 50_000)
listing_one.photo.attach(io: file, filename: "rhein_energie_stadion.png", content_type: "image/png")
listing_one.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503137/mc5whh9ugwfrzzwudzld.jpg")
listing_two = Listing.create(name: "Allianz Arena", address: "Munich", user_id: 1, price: 200_000, description: "Good", capacity: 75_000)
listing_two.photo.attach(io: file, filename: "allianz_arena.png", content_type: "image/png")
listing_two.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503163/uly2j7oxvckkzybhdrsh.jpg")
listing_three = Listing.create(name: "Signal-Iduna Park", address: "Dortmund", user_id: 1, price: 10_000, description: "Cool", capacity: 81_000)
listing_three.photo.attach(io: file, filename: "signal_iduna_park.png", content_type: "image/png")
listing_three.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503177/h3sblberbgq0nhzbypsz.jpg")
listing_four = Listing.create(name: "Anfield", address: "Liverpool", user_id: 1, price: 50_000, description: "Red", capacity: 52_000)
listing_four.photo.attach(io: file, filename: "anfield.png", content_type: "image/png")
listing_four.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503208/dpkysxlfgovsp8bdt73g.jpg")
listing_five = Listing.create(name: "Camp Nou", address: "Barcelona", user_id: 1, price: 20_000, description: "Big", capacity: 95_000)
listing_five.photo.attach(io: file, filename: "camp_nou.png", content_type: "image/png")
listing_five.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503293/lcmltdnw8vaivi1mceia.jpg")
listing_six = Listing.create(name: "Estadio Santiago Bernabéu", address: "Madrid", user_id: 1, price: 75_000, description: "Royal", capacity: 63_000)
listing_six.photo.attach(io: file, filename: "estadio_santiago_bernabeu.png", content_type: "image/png")
listing_six.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503315/a6t0e1bw72qjm3klfczl.jpg")
listing_seven = Listing.create(name: "Amsterdam Arena", address: "Amsterdam", user_id: 1, price: 17_000, description: "Nice", capacity: 70_000)
listing_seven.photo.attach(io: file, filename: "amsterdam_arena.png", content_type: "image/png")
listing_seven.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503336/ugkhbezgualvtlobtuqz.jpg")
listing_eight = Listing.create(name: "San Siro", address: "Milan", user_id: 1, price: 1_000, description: "Old", capacity: 82_000)
listing_eight.photo.attach(io: file, filename: "san_siro.png", content_type: "image/png")
listing_eight.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503350/aq8nxoujcxadllphrpmb.jpg")
listing_nine = Listing.create(name: "Stamford Bridge", address: "London", user_id: 1, price: 350_000, description: "Expensive", capacity: 47_000)
listing_nine.photo.attach(io: file, filename: "stamford_bridge.png", content_type: "image/png")
listing_nine.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503365/gvpsayyb2xkvino6zsoo.jpg")
listing_ten = Listing.create(name: "Parc des Princes", address: "Paris", user_id: 1, price: 832_000, description: "Exists", capacity: 46_000)
listing_ten.photo.attach(io: file, filename: "parc_des_princes.png", content_type: "image/png")
listing_ten.save!
