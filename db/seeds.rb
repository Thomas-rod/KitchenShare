# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Roxane", last_name: "Haddad", address: "4 rue des Prêtres Saint-Séverin, 75005, Paris", phone_number: "0664784489", email: "roxane.haddad@gmail.com")
User.create(first_name: "Jonathan", last_name: "Courdavault", address: "2 avenue d'Argenteuil, 95870, Bezons", phone_number: "0778381974", email: "jo.courdavault@gmail.com")
User.create(first_name: "Thomas", last_name: "Rodier", address: "14 rue des Lyonnais, 75005, Paris", phone_number: "0668489169", email: "rodiert17@gmail.com")
User.create(first_name: "Maodo", last_name: "Diop", address: "12 rue Madeleine Laffitte, 93100, Montreuil", phone_number: "0663906049", email: "maodod1@gmail.com")

Kitchen.create()
