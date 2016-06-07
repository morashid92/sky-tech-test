class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    	t.string    :firstname
    	t.string 	:surname
    end
  end
end
