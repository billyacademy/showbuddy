require 'rails_helper'


feature "an admin adds a venue", %q(
As an admin
I want to add a venue
So that their shows can be submitted to ShowBuddy

Acceptance Criteria
[x] A non admin user should be prompted with an authorization error if
attempting to access admin pages
) do
  scenario "Non admin attempts to access admin pages" do

    user = FactoryGirl.create(:user)
    venue = FactoryGirl.create(:venue)

    sign_in_as(user)

    visit edit_admin_venue_path(venue)

    expect(page).to have_content "You are not authorized to access this page."
  end
end
