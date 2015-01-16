require 'rails_helper'


feature "an admin updates a venue", %q(
As an admin
I want to update a venue
So that their information is always up to date.

Acceptance Criteria
[x] An admin must be able to update Venue information from the admin namespace
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



# t.string   "name",           null: false
# t.string   "address_line_1", null: false
# t.string   "address_line_2"
# t.string   "city",           null: false
# t.string   "state",          null: false
# t.string   "zip",            null: false
# t.string   "website",        null: false
