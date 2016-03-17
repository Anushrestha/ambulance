class CreateAmbulancestatuses < ActiveRecord::Migration
  def change
    create_table :ambulancestatuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
