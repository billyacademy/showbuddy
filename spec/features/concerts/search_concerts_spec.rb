require "rails_helper"

feature "a user searches for a concert", %q(
As a user
I want to search for a concert
So that I can be informed on details of concerts I want to attend

Acceptance Criteria
[] A user must be able to search for a concert
  ) do
  scenario "fill in search form and view results", focus: true do
    the_sinclair = FactoryGirl.create(:venue, id: 2, name: "The Sinclair")
    paradise_rock_club = FactoryGirl.create(:venue, id: 3, name: "Paradise Rock Club")
    brand_new = FactoryGirl.create(:concert, artist_1: "Brand New", venue_id: 2)
    against_me = FactoryGirl.create(:concert, artist_1: "Against Me", venue_id: 2)
    new_found_glory = FactoryGirl.create(:concert, artist_1: "New Found Glory" , venue_id: 3)
    moving_moutains = FactoryGirl.create(:concert, artist_1: "Moving Mountains", venue_id: 3)

    visit concerts_path

    fill_in "Search", with: "New"
    click_button "Search Concerts"


    expect(page).to have_link("New Found Glory", href: concert_path(new_found_glory))
    expect(page).to have_link("Brand New", href: concert_path(brand_new))
    expect(page).to_not have_content(new_found_glory.artist_1)
    expect(page).to_not have_content(moving_moutains.artist_1)
  end
end
