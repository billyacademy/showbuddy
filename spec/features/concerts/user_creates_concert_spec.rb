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
    select "2015", from: "concert_date_1i"
    select "January", from: "concert_date_2i"
    select "29", from: "concert_date_3i"
    select "9pm", from: "concert_time"
    fill_in "concert_artist_1", with: "Blink-182"
    fill_in "Link to Event", with: "www.ticketmaster.com"
    fill_in "Price", with: 18

    click_on "Submit"
    expect(page).to have_content("The Sinclair")
    expect(page).to have_content("Blink-182")
  end

  scenario "user submits a concert with insufficient information" do

    visit new_concert_path
    select "The Sinclair", from: "Venue"
    select "2015", from: "concert_date_1i"
    select "January", from: "concert_date_2i"
    select "29", from: "concert_date_3i"
    select "9pm", from: "concert_time"
    fill_in "Link to Event", with: "www.ticketmaster.com"
    fill_in "Price", with: 18

    click_button "Submit"
    save_and_open_page
    expect(page).to have_content("artist_1 can't be blank")
  end
end
