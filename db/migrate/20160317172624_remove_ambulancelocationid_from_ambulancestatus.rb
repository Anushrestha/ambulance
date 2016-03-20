class RemoveAmbulancelocationidFromAmbulancestatus < ActiveRecord::Migration
  def self.down
    remove_column :ambulancestatuses, :ambulancelocation_id, :string
  end
end
