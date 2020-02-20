# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

def attach_photo(string, user)
  file = URI.open(string)
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

roxane = User.new(first_name: "Roxane", last_name: "Haddad", address: "4 rue des Prêtres Saint-Séverin, 75005, Paris", phone_number: "0664784489", email: "roxane.haddad@gmail.com", password: "123412")
attach_photo("https://avatars0.githubusercontent.com/u/54777799?v=4", roxane)
roxane.save
john = User.create!(first_name: "Jonathan", last_name: "Courdavault", address: "2 avenue d'Argenteuil, 95870, Bezons", phone_number: "0778381974", email: "jo.courdavault@gmail.com", password: "567856")
attach_photo("https://avatars2.githubusercontent.com/u/58211236?v=4", john)
john.save
thomas = User.create!(first_name: "Thomas", last_name: "Rodier", address: "14 rue des Lyonnais, 75005, Paris", phone_number: "0668489169", email: "rodiert17@gmail.com", password: "432143")
attach_photo("https://avatars1.githubusercontent.com/u/57214511?v=4", thomas)
thomas.save
mao = User.create!(first_name: "Maodo", last_name: "Diop", address: "12 rue Madeleine Laffitte, 93100, Montreuil", phone_number: "0663906049", email: "maodod1@gmail.com", password: "876587")
attach_photo("https://avatars1.githubusercontent.com/u/56120487?v=4", mao)
mao.save

roxane_kitchen = Kitchen.create!(city: "Paris", address: "4 rue des Prêtres Saint-Séverin", capacity: 1, user: roxane, description: "Cuisine qui fait l'affaire avec vue sur le Panthéon", name: "Roxane's kitchen", equipment: "micro-ondes, plaques, fouet, moule", price_by_hour: 5, photos: [""])
# attach_photo("https://avatars0.githubusercontent.com/u/54777799?v=4", roxane)
roxane_kitchen.save
thomas_kitchen = Kitchen.create!(city: "Paris", address: "14 rue des Lyonnais", capacity: 2, user: thomas, description: "Superbe cuisine bien aménagée et très peu utilisée", name: "Thomas' kitchen", equipment: "four, micro-ondes, plaques, nombreux plats", price_by_hour: 10)
# attach_photo("https://avatars0.githubusercontent.com/u/54777799?v=4", thomas_kitchen)
thomas_kitchen.save
john_kitchen = Kitchen.create!(city: "Bezons", address: "2 avenue d'Argenteuil", capacity: 2, user: john, description: "Meilleure cuisine de Bezons", name: "John's kitchen", equipment: "four, plaques, bols, collection de couteaux", price_by_hour: 10)
# attach_photo("https://avatars0.githubusercontent.com/u/54777799?v=4", john_kitchen)
john_kitchen.save
mao_kitchen = Kitchen.create!(city: "Montreuil", address: "12 rue Madeleine Laffitte", capacity: 3, user: mao, description: "Cuistot connu dans tout Montreuil je vous propose également mes conseils", name: "Mao's kitchen", equipment: "micro-ondes, plaques, four, robot", price_by_hour: 15)
# attach_photo("https://avatars0.githubusercontent.com/u/54777799?v=4", mao_kitchen)
mao_kitchen.save

roxane_booking = Booking.create!(kitchen: thomas_kitchen, user: roxane, start_time: "19/02/2020", end_time: "20/02/2020", number_of_people: 1)
thomas_booking = Booking.create!(kitchen: john_kitchen, user: thomas, start_time: "23/02/2020", end_time: "24/02/2020", number_of_people: 2)
john_booking = Booking.create!(kitchen: mao_kitchen, user: john, start_time: "25/02/2020", end_time: "26/02/2020", number_of_people: 1)
mao_booking = Booking.create!(kitchen: roxane_kitchen, user: mao, start_time: "02/03/2020", end_time: "03/03/2020", number_of_people: 3)


