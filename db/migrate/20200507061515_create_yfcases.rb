class CreateYfcases < ActiveRecord::Migration[5.2]
  def change
    create_table :yfcases do |t|
      t.string :case_number
      t.string :other_address
      t.date :auction_day_1
      t.date :auction_day_2
      t.date :auction_day_3
      t.date :auction_day_4
      t.integer :floor_price_1
      t.integer :floor_price_2
      t.integer :floor_price_3
      t.integer :floor_price_4
      t.integer :click_1
      t.integer :click_2
      t.integer :click_3
      t.integer :click_4
      t.integer :monitor_1
      t.integer :monitor_2
      t.integer :monitor_3
      t.integer :monitor_4
      t.integer :margin_1
      t.integer :margin_2
      t.integer :margin_3
      t.integer :margin_4
      t.string :auction_notes
      t.date :first_survey_day
      t.date :other_survey_day
      t.string :foreclosure_announcement_title
      t.string :foreclosure_announcement_link
      t.string :object_photo_title
      t.string :object_photo_link
      t.string :net_price_registration_market_price_title
      t.string :net_price_registration_market_price_link
      t.string :net_price_registration_map_title
      t.string :net_price_registration_map_link
      t.string :net_price_registration_photo_title
      t.string :net_price_registration_photo_link
      t.string :auction_record_title
      t.string :auction_record_link
      t.string :other_notes
      t.string :survey_resolution
      t.string :final_decision
      t.boolean :co_owner
      t.boolean :occupy
      t.boolean :register
      t.boolean :parking_space
      t.boolean :management_fee
      t.boolean :rent
      t.boolean :leak
      t.boolean :easy_parking
      t.boolean :railway
      t.boolean :vegetable_market
      t.boolean :supermarket
      t.boolean :school
      t.boolean :park
      t.boolean :post_office
      t.boolean :main_road
      t.boolean :water_and_power_failure
      t.boolean :good_vision
      t.date :final_decision_date
      t.references :country, foreign_key: true
      t.references :township, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
