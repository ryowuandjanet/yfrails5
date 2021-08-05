class AddHouseTaxNumberToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :houseTaxNumberCountry1, :string
    add_column :yfcases, :houseTaxNumberCountry2, :string
    add_column :yfcases, :houseTaxNumberTownship1, :string
    add_column :yfcases, :houseTaxNumberTownship2, :string
    add_column :yfcases, :houseTaxNumberBuilding1, :string
    add_column :yfcases, :houseTaxNumberBuilding2, :string
    add_column :yfcases, :houseTaxNumberBuilding3, :string
    add_column :yfcases, :houseTaxNumberBuilding4, :string
    add_column :yfcases, :houseTaxNumberHouseHold1, :string
    add_column :yfcases, :houseTaxNumberHouseHold2, :string
    add_column :yfcases, :houseTaxNumberHouseHold3, :string
  end
end
