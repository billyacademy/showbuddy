require 'factory_girl_rails'

FactoryGirl.define do
  factory :venue do
    name "The Sinclair"
    address_line_1 "52 Church Street"
    city "Cambridge"
    state "MA"
    zip "02138"
    website "http://www.sinclaircambridge.com/"
  end
end

FactoryGirl.define do
  factory :concert do
    date "2015/3/25"
    time "8pm"
    artist_1 "Blink-182"
    venue_id 1
    url "https://www.ticketmaster.com"
    venue
  end

  FactoryGirl.define do
    factory :user do
      provider "twitter"
      uid "2974985338"
      name "Show__Buddy"
    end
  end
end
