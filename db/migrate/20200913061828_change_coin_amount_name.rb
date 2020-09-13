class ChangeCoinAmountName < ActiveRecord::Migration[6.0]
  def change
    rename_column :coins, :amount, :value 
  end
end
