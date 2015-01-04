require 'rails_helper'


feature "a user visits the venues page", %q(
As a user
I want to view a list of venues
So that I can discover my venue options

Acceptance Criteria
[ ] I must see all venue names on index
[ ] I must see the url for each venue
) do
  scenario "user views all venues" do

    FactoryGirl.create(:venue)
    visit venues_path

    expect(page).to have_content "Venues"
    expect(page).to have_content "The Sinclair"
  end
end
