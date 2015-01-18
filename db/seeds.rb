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

Concert.delete_all
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
name: "The Middle East Restaurant & Nightclub - Downstairs",
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

Concert.create(
date: "2015/01/30",
artist_1: "Four Year Strong",
artist_2: "Comeback Kid",
artist_3: "Handguns",
artist_4: "Heart to Hearth",
venue_id: Venue.find_by(name: "The Sinclair").id,
url: "http://www.sinclaircambridge.com/event/746601-four-year-strong-cambridge/",
time: "6pm"
)

Concert.create(
date: "2015/02/06",
artist_1: "Kevin Devine",
artist_2: "Into It. Over It.",
artist_3: "Laura Stevenson",
venue_id: Venue.find_by(name: "The Sinclair").id,
url: "http://www.sinclaircambridge.com/event/712883-kevin-devine-into-it-over-cambridge/",
time: "8pm"
)

Concert.create(
date: "2015/02/16",
artist_1: "Doomtree",
artist_2: "Mike Eagle",
venue_id: Venue.find_by(name: "The Sinclair").id,
url: "http://www.sinclaircambridge.com/event/733271-doomtree-cambridge/",
time: "8pm"
)

Concert.create(
date: "2015/02/06",
artist_1: "Frnklero And the Cellabration",
artist_2: "The Homeless Gospel Choir",
artist_3: "Modern Chemistry",
venue_id: Venue.find_by(name: "The Middle East Restaurant & Nightclub - Downstairs").id,
url: "http://www.ticketweb.com/t3/sale/SaleEventDetail?dispatch=loadSelectionData&eventId=5538325&pl=mideastclub&REFID=elink",
time: "7pm"
)

Concert.create(
date: "2015/02/07",
artist_1: "Goddamn Draculas",
artist_2: "Aquanutz",
artist_3: "Township",
artist_4: "Planetoid",
venue_id: Venue.find_by(name: "The Middle East Restaurant & Nightclub - Downstairs").id,
url: "http://www.ticketweb.com/t3/sale/SaleEventDetail?dispatch=loadSelectionData&eventId=5503825&pl=mideastclub&REFID=elink",
time: "8pm"
)

Concert.create(
date: "2015/02/07",
artist_1: "Saywecanfly",
artist_2: "The Weekend Riot",
artist_3: "Austin Jones",
venue_id: Venue.find_by(name: "Brighton Music Hall").id,
url: "http://www.ticketmaster.com/event/01004D8FB6188E97",
time: "6pm"
)

Concert.create(
date: "2015/02/27",
artist_1: "Saints of Valory",
artist_2: "The Wind + The Wave",
venue_id: Venue.find_by(name: "Brighton Music Hall").id,
url: "http://www.ticketmaster.com/event/01004D88FF56CD05",
time: "6pm"
)

Concert.create(
date: "2015/03/01",
artist_1: "The Dodos",
artist_2: "Springtime Carnivore",
venue_id: Venue.find_by(name: "Brighton Music Hall").id,
url: "http://www.ticketmaster.com/event/01004D55CC324D94",
time: "6pm"
)

Concert.create(
date: "2015/01/30",
artist_1: "Motion City Soundtrack",
venue_id: Venue.find_by(name: "Paradise Rock Club").id,
url: "http://crossroadspresents.com/paradise-rock-club/",
time: "7pm"
)

Concert.create(
date: "2015/02/27",
artist_1: "Murder By Death",
artist_2: "O'Death",
venue_id: Venue.find_by(name: "Paradise Rock Club").id,
url: "http://do617.com/search?query=Murder%20By%20Death#ds-paginated-list",
time: "8pm"
)

Concert.create(
date: "2015/02/04",
artist_1: "Lil Jon",
artist_2: "Radiolux",
venue_id: Venue.find_by(name: "Royale").id,
url: "http://royaleboston.com/events/lil-jon-2/",
time: "9pm"
)

Concert.create(
date: "2015/01/29",
artist_1: "Reel Big Fish",
artist_2: "Less Than Jake",
artist_3: "Authority Zero",
venue_id: Venue.find_by(name: "House of Blues Boston").id,
url: "http://www.houseofblues.com/boston/events/eventdetail/?viewNav=/event-detail&eventId=01004D5F905F26B2&oid=0",
time: "7pm"
)

Concert.create(
date: "2015/01/31",
artist_1: "Dr. Dog",
artist_2: "Chadwick Stokes",
venue_id: Venue.find_by(name: "House of Blues Boston").id,
url: "http://www.houseofblues.com/boston/events/eventdetail/?viewNav=/event-detail&eventId=01004D54CB80698D&oid=0",
time: "7pm"
)

Concert.create(
date: "2015/02/14",
artist_1: "George Clinton & The Parliament Funkadelic",
artist_2: "The Nephrok! Allstars",
venue_id: Venue.find_by(name: "House of Blues Boston").id,
url: "http://www.houseofblues.com/boston/events/eventdetail/?viewNav=/event-detail&eventId=01004D4AE526821D&oid=0",
time: "6pm"
)


Concert.create(
date: "2015/02/27",
artist_1: "Skinny Pigeons",
artist_2: "Sexy Coyote",
artist_3: "Lucid Soul",
artist_4: "Archon",
venue_id: Venue.find_by(name: "T. T. the Bear's Place").id,
url: "http://www.ticketweb.com/t3/sale/SaleEventDetail?dispatch=loadSelectionData&eventId=5503165",
time: "9pm"
)

Concert.create(
date: "2015/02/28",
artist_1: "Bellwire",
artist_2: "herMajesty",
artist_3: "The Knockups",
artist_4: "The Only Humans",
venue_id: Venue.find_by(name: "T. T. the Bear's Place").id,
url: "http://www.ticketweb.com/t3/sale/SaleEventDetail?dispatch=loadSelectionData&eventId=5595435",
time: "9pm"
)

Concert.create(
date: "2015/08/28",
artist_1: "Idina Menzel",
venue_id: Venue.find_by(name: "Blue Hills Bank Pavillion").id,
url: "http://www.ticketmonster.com/buy-Idina-Menzel-tickets-at-Blue-Hills-Bank-Pavilion-Boston-MA-08-28-2015/608214?aid=16313&sid=bluehillsbankpavilion",
time: "8pm"
)


Concert.create(
date: "2015/03/27",
artist_1: "Taking Back Sunday",
artist_2: "The Menzingers",
artist_3: "letlive",
venue_id: Venue.find_by(name: "Worcester Palladium").id,
url: "http://www.thepalladium.net/event/715409-taking-back-sunday-worcester/",
time: "7pm"
)

Concert.create(
date: "2015/08/18",
artist_1: "Nickelback",
venue_id: Venue.find_by(name: "The Xfinity Center").id,
url: "http://www.ticketliquidator.com/tix/tickets.aspx?evtid=2444067&utm_medium=aff&utm_source=ir&utm_campaign=90434",
time: "7pm"
)
