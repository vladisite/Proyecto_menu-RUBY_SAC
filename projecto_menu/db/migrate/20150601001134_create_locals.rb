class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :description
      t.string :address
      t.string :phone
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
