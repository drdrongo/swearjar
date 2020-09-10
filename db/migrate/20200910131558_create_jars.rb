class CreateJars < ActiveRecord::Migration[6.0]
  def change
    create_table :jars do |t|
      t.decimal :current_amount,  null: false, default: 0
      t.decimal :end_amount,      null: false, default: 100
      t.string  :goal,            null: false, default: ''
      t.timestamps
    end
  end
end
