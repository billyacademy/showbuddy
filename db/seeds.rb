# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def venue_names(venues)
  venues.all.each do |venue|
    puts "creating #{venue.name}"
  end
end


Venue.delete_all
Venue.create(
  name: 'The Sinclair',
  address_line_1: "52 Church Street",
  city: "Cambridge",
  state: "MA",
  zip: "02138",
  website: "http://www.sinclaircambridge.com/"
)

Venue.create(
name: 'Brighton Music Hall',
address_line_1: "158 Brighton Avenue",
city: "Allston",
state: "MA",
zip: "02134",
website: "http://crossroadspresents.com/brighton-music-hall"
)

Venue.create(
name: 'Paradise Rock Club',
address_line_1: "967 Commonwealth Avenue",
city: "Boston",
state: "MA",
zip: "02215",
website: "http://crossroadspresents.com/paradise-rock-club"
)

Venue.create(
name: 'Royale',
address_line_1: "279 Tremont Street",
city: "Boston",
state: "MA",
zip: "02116",
website: "http://royaleboston.com/"
)

Venue.create(
name: 'House of Blues Boston',
address_line_1: "15 Lansdowne Street",
city: "Boston",
state: "MA",
zip: "02215",
website: "http://www.houseofblues.com/boston/"
)

Venue.create(
name: "T. T. the Bear's Place",
address_line_1: "10 Brookline Street",
city: "Cambridge",
state: "MA",
zip: "02139",
website: "http://www.ttthebears.com/"
)

Venue.create(
name: "The Middle East Restaurant & Nightclub",
address_line_1: "472-480 Massachusetts Avenue",
city: "Cambridge",
state: "MA",
zip: "02139",
website: "http://mideastoffers.com/me/"
)

Venue.create(
name: "Blue Hills Bank Pavillion",
address_line_1: "290 Northern Avenue",
city: "Boston",
state: "MA",
zip: "02210",
website: "http://www.bluehillsbankpavilion.net/"
)

Venue.create(
name: "Worcester Palladium",
address_line_1: "261 Main Street",
city: "Worcester",
state: "MA",
zip: "01608",
website: "http://www.thepalladium.net/"
)

Venue.create(
name: "The Xfinity Center",
address_line_1: "885 South Main Street",
city: "Mansfield",
state: "MA",
zip: "02048",
website: "http://www.thexfinitycenter.com/"
)







venue_names(Venue)
