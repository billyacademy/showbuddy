require 'rails_helper'


feature "a user visits rsvp show page", %q(
As a user
I want to rsvp to a concert
So that others can see that I want to attend

Acceptance Criteria
[x] I must be able to rsvp to a concert from the rsvp show page
[x] I should be to see other rsvps once I have rsvp'd to the show
) do
  scenario "user successfully rsvps to a concert" do

    blink = FactoryGirl.create(:concert)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user3 = FactoryGirl.create(:user)
    sign_in_as(user)

    visit concert_path(blink.id)
    fill_in "Comment", with: "Blink-182 is my favorite, please go with me!"
    click_on "I want to go!"

    expect(page).to have_content "You have successfully RSVP'd"
    expect(page).to_not have_button "I want to go!"

    click_link "Sign out"
    sign_in_as(user2)

    visit concert_path(blink.id)
    click_on "I want to go!"

    expect(page).to have_content  user.name
    expect(page).to_not have_content  user3.name
    expect(page).to have_content "Blink-182 is my favorite, please go with me!"
  end
end
