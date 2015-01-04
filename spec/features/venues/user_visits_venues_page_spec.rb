require 'rails_helper'


feature "a user visits the venues page", %q(
As a user
I want to view a list of venues
So that I can discover my venue options

Acceptance Criteria
[x] I must be able to navigate to the venues page from anywhere on the website
[x] I must see all venue names on index
[x] I must see a link for each venue's official website
) do
  scenario "user views all venues" do

    FactoryGirl.create(:venue)
    visit root_path
    click_on "Venue List"

    expect(page).to have_content "Venues"
    expect(page).to have_content "The Sinclair"
    expect(page).to have_content "The Sinclair's Official Website"
  end
end
