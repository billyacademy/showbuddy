# require 'rails_helper'
#
#
# feature "a user navigates to a concert page", %q(
# As a user
# I want visit a concert's page
# So that I can see details about the concert
#
# Acceptance Criteria
# [x] I must be able to see concert information
# [x] I must not be able to see others who are going if I have not rsvp'd
#   ) do
#
#   before :each do
#     FactoryGirl.create(:venue)
#   end
#
#   scenario "user sucessfully navigates to a concert page" do
#     blink = FactoryGirl.create(:concert)
#
#
#
#     expect(page).to have_content("Blink-182")
#     expect(page).to have_button "I want to go"
#     expect(page).to_not have_content "Others who want to go see"
#   end
# end
