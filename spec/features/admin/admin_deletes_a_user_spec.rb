require 'rails_helper'


feature "an admin deletes a user", %q(
As an admin
I want to delete a user
So that they can no longer troll the site

Acceptance Criteria
[] I must be able to delete a user from the users page
) do
  scenario "admin successfully deletes a user" do

    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, admin: true)

    sign_in_as(user2)

    visit admin_users_path
    click_link "Delete #{user.name}"

    expect(page).to have_content "User successfully deleted"
    expect(page).to_not have_content user.name
  end
    scenario "user unsuccessfully navigates to admin only page" do

    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit admin_users_path
    expect(page).to have_content "You are not authorized to access this page"
  end
end
