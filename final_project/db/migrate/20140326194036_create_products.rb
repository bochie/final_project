class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id, null: false, precision: 5
      t.string :name, null: false
      t.integer :qty_on_hand, null: false, precision: 5
      t.decimal :price, precision: 5, scale: 2, null: false

      t.timestamps
    end
  end
end
