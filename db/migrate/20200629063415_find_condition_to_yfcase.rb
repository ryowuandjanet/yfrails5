class FindConditionToYfcase < ActiveRecord::Migration[5.2]
  def change
  	add_column :yfcases, :adv_find_condition, :string
  end
end
