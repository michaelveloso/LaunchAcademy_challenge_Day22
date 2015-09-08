require 'spec_helper'

# As a user
# I want to create a meetup
# So that I can gather a group of people to discuss a given topic
#
# Acceptance criteria:
# [ ] The user can sign in
# [ ] The user must supply a name
# [ ] The user must supply a location
# [ ] The user must supply a description
# [ ] The user must be signed in to create a meetup
# [ ] The user should be brought to a newly-created meetup's show page
# [ ] The show page should display the correct information

feature "User can create meetups if signed in" do
  feature "User may sign in" do
    scenario "User sees sign in button" do

    end

    scenario "User can log in by clicking sign in button" do

    end
  end

  feature "User can fill in form" do

    scenario "User sees form fields" do
    end

  end

  feature "Form must be filled in correctly to submit" do

    scenario "User cannot submit empty name field" do
    end

    scenario "User cannot submit empty location field" do
    end

    scenario "User cannot submit empty description field" do
    end

  end

  feature "Form submits only if user is signed in" do

    scenario "User cannot submit if not signed in" do
    end

    scenario "User can submit if signed in" do
    end

  end

  feature "Successful submission brings up new meetup's show page" do

    scenario "New show page should show correct information" do
    end

  end
end
