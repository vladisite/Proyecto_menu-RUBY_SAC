class CreateDishes < ActiveRecord::Migration
  def change
    drop_table :dishes
    create_table :dishes do |t|
      t.text :description
      t.boolean :status
      t.references :local, index: true
      t.references :dishes_type, index: true

      t.timestamps
    end
  end
end
