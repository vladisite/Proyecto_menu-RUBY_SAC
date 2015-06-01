class CreateLocals < ActiveRecord::Migration
  def change
    drop_table :locals
    create_table :locals do |t|
      t.string :description
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
