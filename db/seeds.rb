# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Genre.delete_all
Song.delete_all

nick = Artist.create(name: 'Nick Cave', bio: 'He got a red right hand')
zep = Artist.create(name: 'Led Zeppelin', bio: 'They wield the Hammer of the Gods')
pop = Genre.create(name: 'Pop')
rock = Genre.create(name: 'Rock')
rnb = Genre.create(name: 'R n B')
