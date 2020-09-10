class DropJarCoinsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :jar_coins
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
