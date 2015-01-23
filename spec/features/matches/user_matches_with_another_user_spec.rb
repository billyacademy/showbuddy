require 'rails_helper'


feature "user matches with another user", %q(
As a user
I want to notify another user that I want to go to a concert with them
So that they are notified and can accept or reject my invite

Acceptance Criteria
[ ] I should be able to see a buddy up button on any other rsvpers

) do
  scenario "user sends a request to buddy up with another user" do

    blink = FactoryGirl.create(:concert)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user3 = FactoryGirl.create(:user)
    sign_in_as(user)

    visit concert_path(blink.id)
    fill_in "Add a message to be seen by potential buddies:", with: "Blink-182 is my favorite, please go with me!"
    click_on "I want to go!"

    expect(page).to have_content "You have successfully RSVP'd"
    expect(page).to_not have_button "I want to go!"

    click_link "Sign out"
    sign_in_as(user2)

    visit concert_path(blink.id)
    click_on "I want to go!"
    click_button "Buddy up!"

    expect(page).to have_content "A request to buddy up has been sent to #{user.name}"
    expect(page).to have_content "Request Pending..."
  end

end
