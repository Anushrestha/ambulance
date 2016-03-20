class AddAmbulanceinfoReferenceToAmbulancelocation < ActiveRecord::Migration
  def change
    add_reference :ambulancelocations, :ambulanceinfo, index: true, foreign_key: true
  end
end
