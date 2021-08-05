class CreatePersonnals < ActiveRecord::Migration[5.2]
  def change
    create_table :personnals do |t|
      t.boolean :is_debtor
      t.boolean :is_creditor
      t.boolean :is_land_owner
      t.boolean :is_build_owner
      t.string :name
      t.string :identity_card
      t.datetime :birthday
      t.string :local_phone
      t.string :mobile_phone
      t.string :personnal_notes
      t.string :person_country
      t.string :person_township
      t.string :person_village
      t.string :person_neighbor
      t.string :person_street
      t.string :person_section
      t.string :person_lane
      t.string :person_alley
      t.string :person_number
      t.string :person_floor
      t.boolean :is_original_owner
      t.boolean :is_new_owner
      t.boolean :is_deed_tax_agent
      t.boolean :is_tax_agent
      t.string :identity_code
      t.string :public_or_private
      t.integer :right_share_person
      t.integer :right_share_all
      t.references :yfcase, foreign_key: true

      t.timestamps
    end
  end
end
