class UpdateCards < ActiveRecord::Migration[5.0]
  def change
  	    change_table :cards do |t|
    	t.string :prompt
    	t.string :answer
    	t.string :prompt_image_url
    	t.string :answer_image_url
    	t.integer :deck_id
    end
  end
end
