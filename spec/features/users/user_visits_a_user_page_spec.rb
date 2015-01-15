require 'rails_helper'


feature "a user visits another user's show page", %q(
As a user
I want to visit another user's profile
So that I can learn more about them

Acceptance Criteria
[x] I must see the user's screen name

) do
  scenario "user successfully rsvps to a concert", focus: true do

    blink = FactoryGirl.create(:concert)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

    sign_in_as(user)

    visit user_path(user2)

    expect(page).to have_content user2.name
  end
end
