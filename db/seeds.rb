# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alice = User.create(username: "Alice", email: "alice@flatiron.com", password: "alice")
bob = User.create(username: "Bob", email: "bob@flatiron.com", password: "bob")
carol = User.create(username: "Carol", email: "carol@flatiron.com", password: "carol")
richard = User.create(username: "Richard", email: "richard@flatiron.com", password: "richard")

td = Event.create(name: "Tenacious D", date: "2018-08-01", venue: "9:30 club")
cc = Event.create(name: "Code Challenge", date: "2018-07-12", venue: "flatiron")

td.users << alice
td.users << bob
td.users << carol

cc.users << richard
cc.users << carol
