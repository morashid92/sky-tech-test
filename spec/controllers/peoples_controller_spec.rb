require 'rails_helper'
require 'spec_helper'

RSpec.describe PeopleController do 

	it 'GET index' do
		get :index
		assert_template :index
	end


end