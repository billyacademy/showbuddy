require 'rails_helper'


feature "a user visits rsvp show page", %q(
As a user
I want to rsvp to a concert
So that others can see that I want to attend

Acceptance Criteria
[x] I must be able to rsvp to a concert from the rsvp show page
[x] I should be to see other rsvps once I have rsvp'd to the show
) do
  scenario "user successfully rsvps to a concert", focus: true do

    blink = FactoryGirl.create(:concert)

    visit concert_path(blink.id)
    click_on "I want to go!"

    expect(page).to have_content "You have successfully RSVP'd"
  end
end
