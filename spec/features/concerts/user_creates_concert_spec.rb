require 'rails_helper'


feature "a user creates a concert to add to their wishlist", %q(
As a user
I want to add a concert to the website
So that I can tag it as a concert that I want to see

Acceptance Criteria
[] I must be able to navigate to a page where I can add a concert from anywhere
[] I must only be able to add a concert at a listed venue
[] I must supply the concert's Date, Time, 1 artist, venue, show url
[] I may optionally supply the ticket price
) do

  scenario "user successfully adds a concert" do

    FactoryGirl.create(:venue)
    visit root_path
    click_on "Add a Concert"

    select "The Sinclair", from: "Venue"
    fill_in "Date", with: "12/01/204"
    fill_in "Time", with: "9:00pm"
    fill_in "Artist 1", with: "Blink-182"
    fill_in "Url", with: "www.ticketmaster.com"

    click_on "Submit"

    expect(page).to have_content("The Sinclair")
  end
end
