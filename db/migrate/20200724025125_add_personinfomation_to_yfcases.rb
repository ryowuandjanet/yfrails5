class AddPersoninfomationToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :realestateregistrationRealEstateAgent, :string
    add_column :yfcases, :complaintLitigationAgent, :string
  end
end


