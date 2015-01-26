require 'factory_girl_rails'

FactoryGirl.define do
  factory :venue do
    sequence(:name) { |n| "The Sinclair#{n}" }
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
      sequence(:uid) { |n| "297498533#{n}" }
      sequence(:name) { |n| "Show__Buddy#{n}" }
      admin false
    end
  end
end
