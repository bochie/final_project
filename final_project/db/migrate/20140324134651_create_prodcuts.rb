class CreateProdcuts < ActiveRecord::Migration
  def change
    create_table :prodcuts do |t|
      t.integer :product_id
      t.string :name
      t.integer :qty_on_hand
      t.decimal :price

      t.timestamps
    end
  end
end
