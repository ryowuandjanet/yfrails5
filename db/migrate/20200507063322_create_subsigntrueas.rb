class CreateSubsigntrueas < ActiveRecord::Migration[5.2]
  def change
    create_table :subsigntrueas do |t|
      t.string :signtruea
      t.string :signtruea_first_name
      t.string :signtruea_last_name
      t.date :signtruea_date
      t.references :yfcase, foreign_key: true

      t.timestamps
    end
  end
end
