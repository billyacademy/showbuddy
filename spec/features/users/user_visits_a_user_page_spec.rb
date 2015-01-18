require 'rails_helper'


feature "a user visits another user's show page", %q(
As a user
I want to visit another user's profile
So that I can learn more about them

Acceptance Criteria
[x] I must see the user's screen name

) do
  scenario "user visits another user's profile page", focus: true do

    blink = FactoryGirl.create(:concert)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, image:
      "http://pbs.twimg.com/profile_images/556868208989184002/_bvUho6r_normal.jpeg")

    sign_in_as(user)

    visit user_path(user2)

    expect(page).to have_content user2.name
  end
end
