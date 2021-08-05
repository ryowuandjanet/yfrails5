class CreateSubsigntruecs < ActiveRecord::Migration[5.2]
  def change
    create_table :subsigntruecs do |t|
      t.string :signtruec
      t.string :signtruec_first_name
      t.string :signtruec_last_name
      t.date :signtruec_date
      t.references :yfcase, foreign_key: true

      t.timestamps
    end
  end
end
