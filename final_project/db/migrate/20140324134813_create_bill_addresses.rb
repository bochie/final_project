class CreateBillAddresses < ActiveRecord::Migration
  def change
    create_table :bill_addresses do |t|
      t.references :customers
      t.string :address, null: false
      t.string :postal_code, null: false
      t.string :state_province, null: false
      t.references :customer, null: false
      t.timestamps
    end
  end
end
