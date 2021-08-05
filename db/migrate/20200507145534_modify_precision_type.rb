class ModifyPrecisionType < ActiveRecord::Migration[5.2]
  def change
    change_column(:lands, :land_area, :decimal,precision: 10, scale: 2)
    change_column(:builds, :build_area, :decimal,precision: 10, scale: 2)
  end
end
