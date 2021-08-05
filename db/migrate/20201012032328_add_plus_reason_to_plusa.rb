class AddPlusReasonToPlusa < ActiveRecord::Migration[5.2]
  def change
    add_column :plusrateas, :plusa2,:decimal,:precision => 4, :scale => 2
    add_column :plusrateas, :plusa_reason2, :string
  end
end
