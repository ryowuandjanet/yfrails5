class AddLandRemarksToLands < ActiveRecord::Migration[5.2]
  def change
    add_column :lands, :landRemarks,:string
  end
end
