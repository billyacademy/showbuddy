require 'rails_helper'

feature "a user visits the venues show page", %q(
As a user
I want to visit an individual venue's ShowBuddy page
So that I can see upcoming, highlighted shows at the venue

Acceptance Criteria

[x] I must be able to navigate to an individual venue's page from the venues page
[x] I must see detailed information specific to that venue

) do
  scenario "user visits a venue's page" do

  user = FactoryGirl.create(:user)
  new_venue = FactoryGirl.create(:venue)

  sign_in_as(user)

  visit venues_path

  click_on "#{new_venue.name}"

  expect(page).to have_content new_venue.name
  expect(page).to have_content new_venue.address_line_1
  expect(page).to have_content "#{new_venue.name}'s Official Website"
  end
end
