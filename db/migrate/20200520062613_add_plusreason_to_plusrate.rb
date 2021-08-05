class AddPlusreasonToPlusrate < ActiveRecord::Migration[5.2]
  def change
    add_column :plusrateas, :plusa_reason, :string
    add_column :plusratebs, :plusb_reason, :string
  end
end
