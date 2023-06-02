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
listing_one = Listing.create(name: "Rhein-Energie Stadion", address: "Aachener Str. 999", city: "Cologne", country: "Germany", user_id: 1, price: 200_000, description: "The Rhein Energie stadium, located in Cologne, Germany, exudes a vibrant aura with its modern architecture, passionate FC Köln fanbase, and an electrifying atmosphere that amplifies the intensity of matches, making it a true fortress and source of pride for the club and its supporters.", capacity: 50_000)
listing_one.photos.attach(io: file, filename: "rhein_energie_stadion.png", content_type: "image/png")
listing_one.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503137/mc5whh9ugwfrzzwudzld.jpg")
listing_two = Listing.create(name: "Allianz Arena", address: "Werner-Heisenberg-Allee 25", city: "Munich", country: "Germany", user_id: 1, price: 200_000, description: "The Allianz Arena, located in Munich, Germany, is a magnificent state-of-the-art football stadium renowned for its iconic translucent exterior facade that can change colors, symbolizing the home teams of FC Bayern Munich, creating a mesmerizing spectacle during matches and serving as a symbol of the city's passion for the beautiful game.", capacity: 75_000)
listing_two.photos.attach(io: file, filename: "allianz_arena.png", content_type: "image/png")
listing_two.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503163/uly2j7oxvckkzybhdrsh.jpg")
listing_three = Listing.create(name: "Signal-Iduna Park", address: "Strobelallee 50", city: "Dortmund", country: "Germany", user_id: 1, price: 10_000, description: "Signal Iduna Park, situated in Dortmund, Germany, is an awe-inspiring football stadium famed for its electrifying atmosphere, characterized by the vibrant Yellow Wall of dedicated fans, making it one of the most iconic and intimidating venues in world football.", capacity: 81_000)
listing_three.photos.attach(io: file, filename: "signal_iduna_park.png", content_type: "image/png")
listing_three.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503208/dpkysxlfgovsp8bdt73g.jpg")
listing_five = Listing.create(name: "Camp Nou", address: "12 C. d'Arístides Maillol", city: "Barcelona", country: "Spain", user_id: 1, price: 20_000, description: "Camp Nou, situated in Barcelona, Spain, stands as an imposing cathedral of football, renowned for its colossal size, captivating architecture, and the roaring symphony of FC Barcelona fans that fills its stands, embodying the club's essence and captivating spectators with its grandeur.  ", capacity: 95_000)
listing_five.photos.attach(io: file, filename: "camp_nou.png", content_type: "image/png")
listing_five.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503293/lcmltdnw8vaivi1mceia.jpg")
listing_six = Listing.create(name: "Estadio Santiago Bernabéu", address: "1 Av. de Concha Espina", city: "Madrid", country: "Spain", user_id: 1, price: 75_000, description: "The Bernabeu stadium, located in Madrid, Spain, stands as an iconic temple of football, synonymous with the prestigious history of Real Madrid, enchanting spectators with its majestic presence, legendary moments, and the resounding echoes of passion that reverberate through its hallowed grounds.", capacity: 63_000)
listing_six.photos.attach(io: file, filename: "estadio_santiago_bernabeu.png", content_type: "image/png")
listing_six.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503315/a6t0e1bw72qjm3klfczl.jpg")
listing_seven = Listing.create(name: "Amsterdam Arena", address: "Johan Cruijff Boulevard 1", city: "Amsterdam", country: "Netherlands", user_id: 1, price: 17_000, description: "The Amsterdam Arena, situated in Amsterdam, Netherlands, shines as a modern marvel of football architecture, boasting a retractable roof, a vibrant atmosphere, and the passionate chants of Ajax supporters, encapsulating the club's rich tradition and providing an unforgettable experience for fans and players alike.", capacity: 70_000)
listing_seven.photos.attach(io: file, filename: "amsterdam_arena.png", content_type: "image/png")
listing_seven.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503336/ugkhbezgualvtlobtuqz.jpg")
listing_eight = Listing.create(name: "San Siro", address: "Piazzale Angelo Moratti", city: "Milan", country: "Italy", user_id: 1, price: 27_000, description: "The San Siro, located in Milan, Italy, stands as a timeless football cathedral, hosting the passionate rivalries of AC Milan and Inter Milan, as well as countless historic moments, with its iconic structure and electrifying atmosphere etching indelible memories into the hearts of football enthusiasts worldwide.", capacity: 82_000)
listing_eight.photos.attach(io: file, filename: "san_siro.png", content_type: "image/png")
listing_eight.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503350/aq8nxoujcxadllphrpmb.jpg")
listing_nine = Listing.create(name: "Stamford Bridge", address: "Stamford Bridge, Fulham Rd.", city: "London", country: "England", user_id: 1, price: 150_000, description: "Stamford Bridge, situated in London, England, serves as an iconic football fortress, home to Chelsea FC, where the echoes of triumphs, the vibrant roar of the Blues' faithful, and the historic legacy of the club intertwine to create an atmosphere that embodies the spirit of Chelsea's unwavering pursuit of glory.", capacity: 47_000)
listing_nine.photos.attach(io: file, filename: "stamford_bridge.png", content_type: "image/png")
listing_nine.save!

file = URI.open("https://res.cloudinary.com/dridrfy9y/image/upload/v1685503365/gvpsayyb2xkvino6zsoo.jpg")
listing_ten = Listing.create(name: "Parc des Princes", address: "24 Rue du Commandant Guilbaud", city: "Paris", country: "France", user_id: 1, price: 427_000, description: "Parc des Princes, nestled in Paris, France, stands as an elegant football sanctuary, where the rich history of Paris Saint-Germain unfolds amidst the passionate chants of their loyal supporters, encapsulating the essence of French football and the grandeur of the capital city.", capacity: 46_000)
listing_ten.photos.attach(io: file, filename: "parc_des_princes.png", content_type: "image/png")
listing_ten.save!
