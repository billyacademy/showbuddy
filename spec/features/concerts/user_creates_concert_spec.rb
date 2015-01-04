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

    select :venue_id
    fill_in :date
    fill_in :time
    fill_in :artist_1
    fill_in :show_url
  end
end
