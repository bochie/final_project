class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :order_id
      t.integer :customer_id
      t.string :first_name
      t.string :last_name
      t.string :email_address

      t.timestamps
    end
  end
end
