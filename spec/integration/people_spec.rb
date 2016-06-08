require 'rails_helper'

RSpec.describe "People", type: :request do

# the test initializes a person by using the factory created as a person in factories
# visits person_path and fills in the first and last name. After clicking create, the 
# path should be the home page and the newly created user should have been created.

it "creates a person" do
	person = create(:person)
	visit new_person_path
	fill_in "First Name", :with => person.firstname
	fill_in "First Name", :with => person.lastname
	click_button "Create"
	expect(current_path).to eq('/people')
	expect(page).to have_content(person.firstname)
	end
end
