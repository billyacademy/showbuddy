require 'rails_helper'


feature "user accepts buddy up request", %q(
As a user
I want to be able to accept or reject an invite
So that I can let inviting user know my intentions

Acceptance Criteria
[x] A user should be prompted with a confirmation message when they accept a buddy up request
[x] A user should be prompted with a rejection message when they accept a buddy up request

) do
  scenario "user accepts a request to buddy up with another user" do

  blink = FactoryGirl.create(:concert)
  user = FactoryGirl.create(:user)
  user2 = FactoryGirl.create(:user)
  user3 = FactoryGirl.create(:user)
  sign_in_as(user)

  visit concert_path(blink.id)
  fill_in "Add a message to be seen by potential buddies:", with: "Blink-182 is my favorite, please go with me!"
  click_on "I want to go!"

  click_link "Sign out"
  sign_in_as(user2)

  visit concert_path(blink.id)
  click_on "I want to go!"
  click_button "Buddy up!"

  click_link "Sign out"
  sign_in_as(user)

  click_link "Dashboard"
  click_link "Accept"

  expect(page).to have_content "You have accepted the request to go to the show!"
  end

  scenario "user rejects a request to buddy up with another user" do

    blink = FactoryGirl.create(:concert)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    user3 = FactoryGirl.create(:user)
    sign_in_as(user)

    visit concert_path(blink.id)
    fill_in "Add a message to be seen by potential buddies:", with: "Blink-182 is my favorite, please go with me!"
    click_on "I want to go!"

    click_link "Sign out"
    sign_in_as(user2)

    visit concert_path(blink.id)
    click_on "I want to go!"
    click_button "Buddy up!"

    click_link "Sign out"
    sign_in_as(user)

    click_link "Dashboard"
    click_link "Reject"

    expect(page).to have_content "You have declined the request to go to the show!"
  end

end
