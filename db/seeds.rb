# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



alice = User.create(username: "alice", password: "alice", email: "alice@flatiron.com")
bob = User.create(username: "bob", password: "bob", email: "bob@flatiron.com")
carol = User.create(username: "carol", password: "carol", email: "carol@flatiron.com")
dan = User.create(username: "dan", password: "dan", email: "dan@flatiron.com")
evelyn = User.create(username: "evelyn", password: "evelyn", email: "evelyn@flatiron.com")
frank = User.create(username: "frank", password: "frank", email: "frank@flatiron.com")
gail = User.create(username: "gail", password: "gail", email: "gail@flatiron.com")

td = Event.create(name: "Tenacious D", venue: "the moon", date: "2018-08-21")

gailcomment = Comment.create(content: "I love the moon", user: gail, event: td)
dancomment = Comment.create(content: "A tribute to the best concert in the world", user: dan, event: td)

users = [alice, bob, carol, dan, evelyn, frank, gail]

users.each {|user| td.users << user}