class RemoveCardsTable < ActiveRecord::Migration[5.0]
  def up
  	drop_table :cards_tables
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end