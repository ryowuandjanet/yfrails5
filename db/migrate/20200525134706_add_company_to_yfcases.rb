class AddCompanyToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases,:company,:string
  end
end
