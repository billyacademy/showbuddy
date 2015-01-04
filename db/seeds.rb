# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Venue.delete_all
the_sinclair = Venue.create(
  name: 'The Sinclair',
  address_line_1: "52 Church Street",
  city: "Cambridge",
  state: "MA",
  zip: "02138",
  website: "http://www.sinclaircambridge.com/",
  )

puts "creating #{the_sinclair[:name]}"
