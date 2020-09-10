class AddJarRefToCoins < ActiveRecord::Migration[6.0]
  def change
    add_reference :coins, :jar, null: false, foreign_key: true
  end
end
