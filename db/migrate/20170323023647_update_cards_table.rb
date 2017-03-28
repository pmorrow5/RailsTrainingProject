class UpdateCardsTable < ActiveRecord::Migration[5.0]
  def change
    change_table :cards do |t|
    	t.string :prompt
    	t.string :answer
    	t.string :prompt_image_url
    	t.string :answer_image_url
    	t.foreign_key :deck_id, :decks
    end
  end
end
