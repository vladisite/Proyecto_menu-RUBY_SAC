class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :description
      t.references :dishes_type, index: true
      t.references :local, index: true
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
