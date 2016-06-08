require 'rails_helper'
require 'spec_helper'

RSpec.describe PeopleController do 
	before (:each) do
 		@person = FactoryGirl.create(:person)
	end

#unit test to check if the methods exist
	it 'GET index' do
		get :index
		assert_template :index
	end

	it 'GET new' do 
		get :new
		assert_template :new
	end

    it 'POST create' do
     expect {
      post :create, id: @person, :person => {:firstname => @person.firstname}
        }.to change(Person, :count).by(1)
    end

    it "PUT update" do
    	Person.any_instance.should_receive(:update).with({:firstname => @person.firstname})
    	put :update, {:id => @person.to_param, :person => {:firstname => @person.firstname}}
    end
end