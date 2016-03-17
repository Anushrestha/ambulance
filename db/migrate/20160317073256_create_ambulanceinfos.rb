class CreateAmbulanceinfos < ActiveRecord::Migration
  def change
    create_table :ambulanceinfos do |t|
      t.string :name
      t.integer :contact1
      t.integer :contact2
      t.string :organization_name

      t.timestamps null: false
    end
  end
end
