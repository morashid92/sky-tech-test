class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end


  def new
    @person = Person.new
  end

	def create
		@person = Person.new(person_params)
	end


  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:firstname, :lastname)
    end

end