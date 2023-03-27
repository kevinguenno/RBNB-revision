# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning DB"
Flat.destroy_all
User.destroy_all

puts "seeding"
user_1 = User.create!({first_name: "Kevin", last_name: "Guenno"})
user_2 = User.create!({first_name: "Laeticia", last_name: "Guerin"})

flat_1 = Flat.new({name:"Appartement 1", description:"Super mer", address:"nantes", price: 150 })
flat_1.user = user_1
flat_1.save!

flat_2 = Flat.new({name:"Appartement 2", description:"Super poubelle", address:"nantes", price: 100 })
flat_2.user = user_1
flat_2.save!

flat_3 = Flat.new({name:"Appartement 3", description:"Pas de fenetre", address:"nantes", price: 50 })
flat_3.user = user_2
flat_3.save!

puts "done"
