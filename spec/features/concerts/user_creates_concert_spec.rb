require 'rails_helper'


feature "a user creates a concert to add to their wishlist", %q(
As a user
I want to add a concert to the website
So that I can tag it as a concert that I want to see

Acceptance Criteria
[x] I must be able to navigate to a page where I can add a concert from anywhere
[x] I must only be able to add a concert at a listed venue
[x] I must supply the concert's Date, Time, 1 artist, venue, show url
[x] I may optionally supply the ticket price
[x] If I do not supply valid information I should be given error messages
) do

  before :each do
    FactoryGirl.create(:venue)
  end

  scenario "user successfully adds a concert" do

    visit root_path
    click_on "Add a Concert"

    select "The Sinclair", from: "Venue"
    fill_in "Date", with: "12/01/2014"
    fill_in "Time", with: "9:00pm"
    fill_in "Artist 1", with: "Blink-182"
    fill_in "Link to Event", with: "www.ticketmaster.com"
    fill_in "Price", with: 18

    click_on "Submit"

    expect(page).to have_content("The Sinclair")
  end

  scenario "user submits a concert with insufficient information" do

    visit new_concert_path

    select "The Sinclair", from: "Venue"
    fill_in "Date", with: "12/01/2014"
    fill_in "Time", with: "9:00pm"
    fill_in "Link to Event", with: "www.ticketmaster.com"
    fill_in "Price", with: 18

    click_on "Submit"

    expect(page).to have_content("artist_1 can't be blank")
  end
end
