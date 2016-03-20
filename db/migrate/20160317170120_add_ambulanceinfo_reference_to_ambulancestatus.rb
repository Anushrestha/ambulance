class AddAmbulanceinfoReferenceToAmbulancestatus < ActiveRecord::Migration
  def change
    add_reference :ambulancestatuses, :ambulanceinfo, index: true, foreign_key: true
  end
end
