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

def attach_photo_user(string, user)
  file = URI.open(string)
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end
def attach_photo_kitchen(string, kitchen)
  file = URI.open(string)
  kitchen.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

roxane = User.new(first_name: "Roxane", last_name: "Haddad", address: "4 rue des Prêtres Saint-Séverin, 75005, Paris", phone_number: "0664784489", email: "roxane.haddad@gmail.com", password: "123412")
attach_photo_user("https://avatars0.githubusercontent.com/u/54777799?v=4", roxane)
roxane.save
john = User.create!(first_name: "Jonathan", last_name: "Courdavault", address: "2 avenue d'Argenteuil, 95870, Bezons", phone_number: "0778381974", email: "jo.courdavault@gmail.com", password: "567856")
attach_photo_user("https://avatars2.githubusercontent.com/u/58211236?v=4", john)
john.save
thomas = User.create!(first_name: "Thomas", last_name: "Rodier", address: "14 rue des Lyonnais, 75005, Paris", phone_number: "0668489169", email: "rodiert17@gmail.com", password: "432143")
attach_photo_user("https://avatars1.githubusercontent.com/u/57214511?v=4", thomas)
thomas.save
mao = User.create!(first_name: "Maodo", last_name: "Diop", address: "12 rue Madeleine Laffitte, 93100, Montreuil", phone_number: "0663906049", email: "maodod1@gmail.com", password: "876587")
attach_photo_user("https://avatars1.githubusercontent.com/u/56120487?v=4", mao)
mao.save
renaud = User.create!(first_name: "Renaud", last_name: "Dor", address: "6 rue de la Boétie, 75006, Paris", phone_number: "0674563457", email: "bebere@gmail.com", password: "098709")
attach_photo_user("https://avatars2.githubusercontent.com/u/17413076?v=4", renaud)
renaud.save
eniko = User.create!(first_name: "Eniko", last_name: "Guti", address: "24 Rue Saint-Pierre, 94220, Charenton-le-Pont", phone_number: "0636458790", email: "fatfat@gmail.com", password: "167384")
attach_photo_user("https://avatars0.githubusercontent.com/u/57618412?v=4", eniko)
eniko.save
lital = User.create!(first_name: "Lital", last_name: "Levin", address: "13 rue de Vaugirard, 75006, Paris", phone_number: "0723456789", email: "indi@gmail.com", password: "987234")
attach_photo_user("https://avatars1.githubusercontent.com/u/15701919?v=4", lital)
lital.save
ambre = User.create!(first_name: "Ambre", last_name: "Margerit", address: "16 Rue Raffet, 75016, Paris", phone_number: "0756782314", email: "flo@gmail.com", password: "075312")
attach_photo_user("https://avatars0.githubusercontent.com/u/58850047?v=4", ambre)
ambre.save
manu = User.create!(first_name: "Manu", last_name: "Rose", address: "29 Rue Roger Salengro, 92130, Issy-les-Moulineaux", phone_number: "0609080706", email: "achan@gmail.com", password: "453217")
attach_photo_user("https://avatars2.githubusercontent.com/u/56646293?v=4", manu)
manu.save




roxane_kitchen = Kitchen.new(city: "Paris", address: "4 rue des Prêtres Saint-Séverin", capacity: 1, user: roxane, description: "Cuisine qui fait l'affaire avec vue sur le Panthéon", name: "Roxane's kitchen", equipment: "Micro-ondes, Plaques, Fouet, Moule", price_by_hour: 5)
attach_photo_kitchen("https://images.unsplash.com/photo-1556912173-3bb406ef7e77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80", roxane_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1556911220-bff31c812dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=835&q=80", roxane_kitchen)
roxane_kitchen.save
thomas_kitchen = Kitchen.create!(city: "Paris", address: "14 rue des Lyonnais", capacity: 2, user: thomas, description: "Superbe cuisine bien aménagée et très peu utilisée", name: "Thomas' kitchen", equipment: "Four, Micro-ondes, Plaques, Nombreux plats", price_by_hour: 10)
attach_photo_kitchen("https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80", thomas_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1550223026-0d6fd780c560?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", thomas_kitchen)
thomas_kitchen.save
john_kitchen = Kitchen.create!(city: "Bezons", address: "2 avenue d'Argenteuil", capacity: 2, user: john, description: "Meilleure cuisine de Bezons", name: "John's kitchen", equipment: "Four, Plaques, Bols, Collection de couteaux", price_by_hour: 10)
attach_photo_kitchen("https://images.unsplash.com/photo-1564540586988-aa4e53c3d799?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", john_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1556909172-54557c7e4fb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", john_kitchen)
john_kitchen.save
mao_kitchen = Kitchen.create!(city: "Montreuil", address: "12 rue Madeleine Laffitte", capacity: 3, user: mao, description: "Cuistot connu dans tout Montreuil je vous propose également mes conseils", name: "Mao's kitchen", equipment: "Micro-ondes, Plaques, Four, Robot", price_by_hour: 15)
attach_photo_kitchen("https://images.unsplash.com/photo-1563298723-dcfebaa392e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=748&q=80", mao_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1507810184465-fe14fff93967?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80", mao_kitchen)
mao_kitchen.save
renaud_kitchen = Kitchen.create!(city: "Paris", address: "6 rue de la Boétie", capacity: 2, user: renaud, description: "Petite cuisine aménagée pour des préparations rapide", name: "Renaud's kitchen", equipment: "Four, Plaques, Casseroles, Nombreux ustensiles", price_by_hour: 8)
attach_photo_kitchen("https://images.unsplash.com/photo-1556185781-a47769abb7ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", renaud_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1466637574441-749b8f19452f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", renaud_kitchen)
renaud_kitchen.save
eniko_kitchen = Kitchen.create!(city: "Charenton-le-Pont", address: "24 Rue Saint-Pierre", capacity: 6, user: eniko, description: "Grande cuisine, parfait pour la famille et les amis", name: "Eniko's kitchen", equipment: "Plaques au gaz, Plats, Robots, Casseroles", price_by_hour: 20)
attach_photo_kitchen("https://images.unsplash.com/photo-1571179018088-2938f083f2ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", eniko_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", eniko_kitchen)
eniko_kitchen.save
lital_kitchen = Kitchen.create!(city: "Paris", address: "13 rue de Vaugirard", capacity: 3, user: lital, description: "Cuisine parisienne équipée mais très peu utilisée", name: "Lital's kitchen", equipment: "Micro-ondes, Four, Plats", price_by_hour: 6)
attach_photo_kitchen("https://images.unsplash.com/photo-1556185781-a47769abb7ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", lital_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1509023667260-6677209e6fdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", lital_kitchen)
lital_kitchen.save
ambre_kitchen = Kitchen.create!(city: "Paris", address: "16 Rue Raffet", capacity: 4, user: ambre, description: "Superbe cuisine pour toute vos envies", name: "Ambre's kitchen", equipment: "Plaques, Micro-ondes, Casseroles", price_by_hour: 9 )
attach_photo_kitchen("https://images.unsplash.com/photo-1570439481373-4030305cb574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", ambre_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1525802498323-c8fbf69eb42f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", ambre_kitchen)
ambre_kitchen.save
manu_kitchen = Kitchen.create!(city: "Issy-les-Moulineaux", address: "29 Rue Roger Salengro", capacity: 8, user: manu, description: "Immense cuisine aménagée pour tout vos besoins", name: "Manu's kitchen", equipment: "Four, Robots, Plats, Ustensiles", price_by_hour: 25)
attach_photo_kitchen("https://images.unsplash.com/photo-1549089154-ad7b2808944c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", manu_kitchen)
attach_photo_kitchen("https://images.unsplash.com/photo-1580237072617-771c3ecc4a24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60", manu_kitchen)
manu_kitchen.save



roxane_booking = Booking.create!(kitchen: thomas_kitchen, user: roxane, start_time: "19/02/2020", end_time: "20/02/2020", number_of_people: 1)
thomas_booking = Booking.create!(kitchen: john_kitchen, user: thomas, start_time: "23/02/2020", end_time: "24/02/2020", number_of_people: 2)
john_booking = Booking.create!(kitchen: mao_kitchen, user: john, start_time: "25/02/2020", end_time: "26/02/2020", number_of_people: 1)
mao_booking = Booking.create!(kitchen: roxane_kitchen, user: mao, start_time: "02/03/2020", end_time: "03/03/2020", number_of_people: 3)
renaud_booking = Booking.create!(kitchen: renaud_kitchen, user: renaud, start_time: "04/03/2020", end_time: "05/03/2020", number_of_people: 2)
eniko_booking = Booking.create!(kitchen: eniko_kitchen, user: eniko, start_time: "10/03/2020", end_time: "11/03/2020", number_of_people: 6)
lital_booking = Booking.create!(kitchen: lital_kitchen, user: lital, start_time: "05/01/2020", end_time: "06/01/2020", number_of_people: 3)
ambre_booking = Booking.create!(kitchen: ambre_kitchen, user: ambre, start_time: "13/01/2020", end_time: "14/01/2020", number_of_people: 4)
manu_booking = Booking.create!(kitchen: manu_kitchen, user: manu, start_time: "25/01/2020", end_time: "26/01/2020", number_of_people: 8)

