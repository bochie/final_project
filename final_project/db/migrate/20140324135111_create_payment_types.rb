class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.references :customers
      t.string :payment_type, null: false
      t.integer :card_number, null: false, precision: 16
      t.integer :expiry_year, null: false, precision: 2
      t.integer :expiry_month, null: false, precision: 2

      t.timestamps
    end
  end
end
