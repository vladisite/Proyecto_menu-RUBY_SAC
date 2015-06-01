class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :name
      t.date :date_inic
      t.date :date_fina
      t.references :order_status, index: true

      t.timestamps
    end
  end
end
