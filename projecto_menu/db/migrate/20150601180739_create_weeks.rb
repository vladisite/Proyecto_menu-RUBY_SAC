class CreateWeeks < ActiveRecord::Migration
  def change
    drop_table :weeks
    create_table :weeks do |t|
      t.string :name
      t.datetime :date_inic
      t.datetime :date_fini
      t.boolean :status

      t.timestamps
    end
  end
end
