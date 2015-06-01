class CreateProfiles < ActiveRecord::Migration
  def change
    drop_table :profiles
    create_table :profiles do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
