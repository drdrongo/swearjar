class ChangeDecimalToInteger < ActiveRecord::Migration[6.0]
  def up
    change_column :jars, :current_amount, :integer
    change_column :jars, :end_amount, :integer
    change_column :coins, :value, :integer
  end

  def down
    change_column :jars, :current_amount, :decimal
    change_column :jars, :end_amount, :decimal
    change_column :coins, :value, :decimal
  end
end
