class UpdateTables < ActiveRecord::Migration
  def change
    remove_column :customers, :order_id
    remove_column :bill_addresses, :customers_id
    remove_column :orders, :order_lists_id
    remove_column :payment_types, :customers_id
    remove_column :orders, :customers
    remove_column :shipping_addresses, :category_id
    remove_column :shipping_addresses, :customers_id
    add_column :shipping_addresses, :customer_id, :customers
  end
end
