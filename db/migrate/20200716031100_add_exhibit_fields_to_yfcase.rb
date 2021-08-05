class AddExhibitFieldsToYfcase < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :exhibit1, :string
    add_column :yfcases, :exhibit2, :string
    add_column :yfcases, :exhibit3, :string
    add_column :yfcases, :exhibit4, :string
    add_column :yfcases, :tabulationDate, :date
  end
end
