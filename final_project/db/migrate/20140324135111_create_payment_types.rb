class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.integer :customer_id
      t.string :payment_type
      t.integer :card_number
      t.integer :expiry_year
      t.integer :expiry_month

      t.timestamps
    end
  end
end
