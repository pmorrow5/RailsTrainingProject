class UpdateDecksTable < ActiveRecord::Migration[5.0]
  def change
    change_table :decks_tables do |t|
    	t.string :title
    	t.text :description
    end
  end
end
