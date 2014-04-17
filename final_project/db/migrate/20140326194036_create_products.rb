class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :attachment, null: false
      t.integer :qty_on_hand, null: false, precision: 5
      t.decimal :price, precision: 5, scale: 2, null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end
