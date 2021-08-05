class CreateSubsigntruebs < ActiveRecord::Migration[5.2]
  def change
    create_table :subsigntruebs do |t|
      t.string :signtrueb
      t.string :signtrueb_first_name
      t.string :signtrueb_last_name
      t.date :signtrueb_date
      t.references :yfcase, foreign_key: true

      t.timestamps
    end
  end
end
