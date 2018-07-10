# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(username: "bob", password: "bob", email: "bob@flatiron.com")
td = Event.create(name: "Tenacious D", venue: "the moon", date: "2018-08-21")

td.users << bob