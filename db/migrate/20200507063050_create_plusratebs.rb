class CreatePlusratebs < ActiveRecord::Migration[5.2]
  def change
    create_table :plusratebs do |t|
      t.string :personb
      t.decimal :plusb, precision: 4, scale: 2
      t.references :objectbuild, foreign_key: true

      t.timestamps
    end
  end
end
