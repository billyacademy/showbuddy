require 'rails_helper'


feature "an admin deletes a venue", %q(
As an admin
I want to delete a venue
So that if a venue closes, ShowBuddy is up to date.

Acceptance Criteria
[x] An admin must be able to delete a venue from the admin venue index
) do
  scenario "admin successfully updates a venue's information" do

    user = FactoryGirl.create(:user, admin: true)
    venue = FactoryGirl.create(:venue)

    sign_in_as(user)

    visit admin_venues_path

    click_button "Delete #{venue.name}"
    expect(page).to have_content "Venue successfully deleted"
    expect(page).to_not have_content venue.name

  end
end
