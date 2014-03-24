class CreateBillAddresses < ActiveRecord::Migration
  def change
    create_table :bill_addresses do |t|
      t.integer :customer_id
      t.string :country
      t.string :address
      t.string :postal_code
      t.string :state_province

      t.timestamps
    end
  end
end
