class CreateDishesTypes < ActiveRecord::Migration
  def change
    create_table :dishes_types do |t|
      t.string :description
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
