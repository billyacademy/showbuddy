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
