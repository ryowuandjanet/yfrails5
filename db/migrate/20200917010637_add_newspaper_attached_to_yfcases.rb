class AddNewspaperAttachedToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases,:newspaperAttached,:string
  end
end
