require 'rails_helper'


feature "an admin adds a venue", %q(
As an admin
I want to add a venue
So that their shows can be submitted to ShowBuddy

Acceptance Criteria
[x] An admin must be able to add a venue from the admin new venue page
[x] Success or Error message will appear depending on the outcome of the submission form
) do
  scenario "admin successfully creates a venue" do

    user = FactoryGirl.create(:user, admin: true)

    sign_in_as(user)
    visit new_admin_venue_path

    fill_in "Name", with: "Sinclair"
    fill_in "Address line 1", with: "1 Mass Ave"
    fill_in "City", with: "Omaha"
    fill_in "Zip", with: "02212"
    fill_in "Website", with: "http://www.thesinclairmusic.com"
    fill_in "State", with: "NE"

    click_on "Submit"

    expect(page).to have_content "Sinclair"
    expect(page).to have_content "You have successfully created a venue"
  end

  scenario "admin unsuccessfully creates a venue" do
    user = FactoryGirl.create(:user, admin: true)

    sign_in_as(user)
    visit new_admin_venue_path

    fill_in "Name", with: "Sinclair"
    fill_in "Address line 1", with: "1 Mass Ave"
    fill_in "City", with: "Omaha"
    fill_in "Zip", with: "02212"
    fill_in "Website", with: "http://www.thesinclairmusic.com"

    click_on "Submit"

    expect(page).not_to have_content "Sinclair"
    expect(page).to have_content "state is invalid, please enter the correct two character state identifier"
  end
end
