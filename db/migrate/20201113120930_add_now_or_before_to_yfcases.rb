class AddNowOrBeforeToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :now_or_before, :boolean
  end
end
