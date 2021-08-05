class AddWorkareaToSubsigntrue < ActiveRecord::Migration[5.2]
  def change
    add_column :subsigntrueas, :signtruea_work_area, :string
    add_column :subsigntruebs, :signtrueb_work_area, :string
    add_column :subsigntruecs, :signtruec_work_area, :string
  end
end
