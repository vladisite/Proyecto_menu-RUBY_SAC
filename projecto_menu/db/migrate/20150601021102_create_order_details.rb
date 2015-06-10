class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :cant_dishes
      t.decimal :price
      t.decimal :amount
      t.references :order_header, index: true
      t.references :dish, index: true
      t.timestamps
    end
  end
end
