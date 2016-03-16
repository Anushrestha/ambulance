class CreateAmbulancelocations < ActiveRecord::Migration
  def change
    create_table :ambulancelocations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps null: false
    end
  end
end
