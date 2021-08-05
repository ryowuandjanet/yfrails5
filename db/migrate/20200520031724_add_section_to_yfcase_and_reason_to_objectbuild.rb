class AddSectionToYfcaseAndReasonToObjectbuild < ActiveRecord::Migration[5.2]
  def change
    add_column :objectbuilds, :objectbuild_status, :string
    add_column :objectbuilds, :plusa_reason, :string
    add_column :objectbuilds, :plusb_reason, :string
    add_column :yfcases, :big_section, :string
    add_column :yfcases, :small_section, :string
    
  end
end
