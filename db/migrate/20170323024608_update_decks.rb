class UpdateDecks < ActiveRecord::Migration[5.0]
  def change
  	    change_table :decks do |t|
    	t.string :title
    	t.text :description
    end
  end
end
