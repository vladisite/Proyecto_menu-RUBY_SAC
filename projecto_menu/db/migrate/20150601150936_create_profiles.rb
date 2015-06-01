class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.boolean :status
      t.references :user, index: true

      t.timestamps
    end
  end
end
