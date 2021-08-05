class AddPersonnalBuildPointToPersonnals < ActiveRecord::Migration[5.2]
  def change
    add_column :personnals, :personnalBuildHoldingPointPerson,:string
    add_column :personnals, :personnalBuildHoldingPointAll,:string
  end
end
