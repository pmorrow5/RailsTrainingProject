class DropDecksTable < ActiveRecord::Migration[5.0]
  def up
  	drop_table :decks
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
