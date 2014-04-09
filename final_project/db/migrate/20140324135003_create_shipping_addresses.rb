class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.references :customers
      t.string :address, null: false
      t.string :postal_code, null: false
      t.string :state_province, null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end
