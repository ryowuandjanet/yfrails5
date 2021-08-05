class AddTownshipFieldToObjectbuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :objectbuilds, :objectBuildDealYear, :string
    add_column :objectbuilds, :objectBuildDealMonth, :string
  end
end
