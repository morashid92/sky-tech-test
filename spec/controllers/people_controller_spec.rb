require 'rails_helper'
require 'spec_helper'

RSpec.describe PeopleController do 


#unit test to check if the methods exist
	it 'GET index' do
		get :index
		assert_template :index
	end

	it 'GET new' do 
		get :new
		assert_template :new
	end


end