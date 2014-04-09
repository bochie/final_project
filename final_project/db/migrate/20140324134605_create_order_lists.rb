class CreateOrderLists < ActiveRecord::Migration
  def change
    create_table :order_lists do |t|
      t.references :product
      t.references :order
      t.integer :num_ordered, precision: 5, null: false
      t.decimal :price, precision: 5, scale: 2, null: false
      t.references :product, null: false
      t.references :order, null: false

      t.timestamps
    end
  end
end
