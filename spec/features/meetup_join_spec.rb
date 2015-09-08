require 'spec_helper'

# As a user
# I want to join a meetup
# So that I can talk to other members of the meetup
#
# Acceptance criteria:
# [ ] User must be signed in
# [ ] Show page should display button for joining meetup
# [ ] User should see message confirming successful joining

feature "User can join meetups if signed in" do
  feature "User may sign in" do
    scenario "User sees sign in button" do

    end

    scenario "User can log in by clicking sign in button" do

    end
  end

  feature "User can click button to join" do
    scenario "User sees join meetup button" do
    end

    scenario "If not signed in, clicking join meetup button displays error" do
    end

    scenario "If signed in, clicking join meetup button adds user to meetup" do
    end

    scenario "If signed in, clicking join meetup button displays success notification" do
    end
  end
end
