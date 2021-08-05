class AddResultsDateAndTargetToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :active_result, :string
    add_column :yfcases, :active_result_date, :date
    add_column :yfcases, :priority_purchase_result, :string
    add_column :yfcases, :target_number, :string
  end
end
