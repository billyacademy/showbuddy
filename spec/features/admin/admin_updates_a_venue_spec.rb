require 'rails_helper'


feature "an admin updates a venue", %q(
As an admin
I want to update a venue
So that their information is always up to date

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

  scenario "admin unsuccessfully updates a venue's information" do

    user = FactoryGirl.create(:user, admin: true)
    venue = FactoryGirl.create(:venue)

    sign_in_as(user)

    visit edit_admin_venue_path(venue)

    fill_in "Name", with: "Sinclair"
    fill_in "Address line 1", with: "1 Mass Ave"
    fill_in "City", with: "Omaha"
    fill_in "Zip", with: ""

    click_button "Update Venue"

    expect(page).to have_content "Please make sure to fill in all required fields."
  end
end
