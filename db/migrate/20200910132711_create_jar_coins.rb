class CreateJarCoins < ActiveRecord::Migration[6.0]
  def change
    create_table :jar_coins do |t|
      t.references :coins, null: false, foreign_key: true
      t.references :jars, null: false, foreign_key: true

      t.timestamps
    end
  end
end
