class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customers 
      t.decimal :total_cost, precision: 5, scale: 2, null: false
      t.references :order_lists, null: false
      t.references :customer, null: false
      t.timestamps
    end
  end
end
