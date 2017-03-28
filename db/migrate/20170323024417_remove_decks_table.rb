class RemoveDecksTable < ActiveRecord::Migration[5.0]
  def up
  	drop_table :decks_tables
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end