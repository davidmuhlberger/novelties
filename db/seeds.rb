# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

david = User.create(email: 'david.muhlberger@gmail.com', password: 'testtest')

kudoz = Product.create!(user: david, name: "Kuodz", url: "http://getkudoz.com", tagline:"Tinder for job searchs", category: "tech")
Product.create!(user: david, name: "uSlide", url: "http://youslide.io", tagline:"Youtube sucks for education", category: "education")
Product.create!(user: david, name: "Medpics", url: "http://medpics.io", tagline:"Share your diagnosis", category: "tech")
lewagon = Product.create!(user: david, name: "Le Wagon", url: "http://lewagon.org", tagline:"Best coding bootcamp", category: "education")

kudoz.upvotes.create! user: david
lewagon.upvotes.create! user: david
