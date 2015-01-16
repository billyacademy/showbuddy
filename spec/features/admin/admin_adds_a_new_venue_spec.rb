require 'rails_helper'


feature "an admin adds a venue", %q(
As an admin
I want to add a venue
So that their shows can be submitted to ShowBuddy

Acceptance Criteria
[x] An admin must be able to add a venue from the admin new venue page
) do
  scenario "admin successfully updates a venue's information" do

    user = FactoryGirl.create(:user, admin: true)
    venue = FactoryGirl.create(:venue)

    sign_in_as(user)

    visit edit_admin_venue_path(venue)

    fill_in "Name", with: "Sinclair"
    fill_in "Address line 1", with: "1 Mass Ave"
    fill_in "City", with: "Omaha"

    click_button "Update Venue"

    expect(page).to have_content "You have successfully updated the venue"
  end
end
