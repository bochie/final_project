class CreateOrderLists < ActiveRecord::Migration
  def change
    create_table :order_lists do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :num_ordered
      t.decimal :price

      t.timestamps
    end
  end
end
