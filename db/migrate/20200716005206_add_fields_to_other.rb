class AddFieldsToOther < ActiveRecord::Migration[5.2]
  def change
    add_column :lands, :landPresentValue, :string
    add_column :yfcases, :housingTax, :string
    add_column :yfcases, :refereeFee, :string
    add_column :lands, :landTotalArea, :string
    add_column :lands, :landAreaWidth, :string
    add_column :lands, :landAreaDepth, :string
    add_column :builds, :buildTotalArea, :string
    add_column :yfcases, :agreementSplitUnsuccessfulDate, :string
  end
end
