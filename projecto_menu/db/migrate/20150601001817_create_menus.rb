class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :date_menu
      t.integer :stock
      t.decimal :price
      t.date :date_register
      t.references :order_status, index: true
      t.references :local, index: true
      t.references :week, index: true
      t.references :dishes, index: true

      t.timestamps
    end
  end
end
