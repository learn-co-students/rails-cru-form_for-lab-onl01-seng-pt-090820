# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


artists = Artist.create([{ name: "First", bio: "Bio 1" }, { name: "Second", bio: "Bio 2" }])
genres = Genre.create([{ name: "First genre" }, { name: "Second genre" }])
song = Song.create([{ name: "First song" }, { name: "Second song" }])