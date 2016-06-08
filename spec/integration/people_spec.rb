require 'rails_helper'
require 'spec_helper'

RSpec.describe "People" do

# the test initializes a person by using the factory created as a person located in 
# factories visits person_path and fills in the first and last name. After clicking 	 
# create, the path should be on people page and the new user should have been created.

it "creates a person" do
	person = create(:person)
	visit new_person_path
	fill_in "Firstname", :with => person.firstname
	fill_in "Lastname", :with => person.lastname
	click_button "Create Person"
	expect(current_path).to eq('/people/2')
	expect(page).to have_content(person.firstname)
	end


end
