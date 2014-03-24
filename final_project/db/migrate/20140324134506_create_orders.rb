class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.decimal :total_cost

      t.timestamps
    end
  end
end
