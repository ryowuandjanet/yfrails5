class CreatePlusrateas < ActiveRecord::Migration[5.2]
  def change
    create_table :plusrateas do |t|
      t.string :persona
      t.decimal :plusa, precision: 4, scale: 2
      t.references :objectbuild, foreign_key: true

      t.timestamps
    end
  end
end
