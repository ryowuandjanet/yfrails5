# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_13_120930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.string "build_number"
    t.string "build_url"
    t.decimal "build_area", precision: 10, scale: 2
    t.integer "build_holding_point_personal"
    t.integer "build_holding_point_all"
    t.string "build_type_use"
    t.string "use_partition"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "buildCity"
    t.string "buildTownship"
    t.string "buildArea"
    t.string "buildStreet"
    t.string "buildRoad"
    t.string "buildSegment"
    t.string "buildLane"
    t.string "buildDo"
    t.string "buildNumber"
    t.string "buildFloor"
    t.string "buildBigSegment"
    t.string "buildSmallSegment"
    t.string "buildLot"
    t.string "buildLevel1"
    t.string "buildLevel2"
    t.string "buildLevel3"
    t.string "buildLevel4"
    t.string "buildOther1"
    t.string "buildOther2"
    t.string "buildUse"
    t.string "buildScopeOfArea"
    t.string "buildScopeOfRights"
    t.string "buildRemarks"
    t.string "buildTotalArea"
    t.string "buildLandNumber"
    t.string "mainBuildLevel1"
    t.string "mainBuildLevel2"
    t.string "mainBuildLevel3"
    t.string "mainBuildLevel4"
    t.string "mainBuildLevel5"
    t.string "mainBuildConstruction1"
    t.string "mainBuildConstruction2"
    t.string "mainBuildConstruction3"
    t.string "mainBuildConstruction4"
    t.string "mainBuildConstruction5"
    t.string "mainBuildArea1"
    t.string "mainBuildArea2"
    t.string "mainBuildArea3"
    t.string "mainBuildArea4"
    t.string "mainBuildArea5"
    t.string "publicBuildNumber1"
    t.string "publicBuildNumber2"
    t.string "publicBuildNumber3"
    t.string "publicBuildNumber4"
    t.string "publicBuildArea1"
    t.string "publicBuildArea2"
    t.string "publicBuildArea3"
    t.string "publicBuildArea4"
    t.string "publicBuildHP1"
    t.string "publicBuildHP2"
    t.string "publicBuildHP3"
    t.string "publicBuildHP4"
    t.string "subBuildUse1"
    t.string "subBuildUse2"
    t.string "subBuildUse3"
    t.string "subBuildArea1"
    t.string "subBuildArea2"
    t.string "subBuildArea3"
    t.index ["yfcase_id"], name: "index_builds_on_yfcase_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lands", force: :cascade do |t|
    t.string "land_number"
    t.string "land_url"
    t.decimal "land_area", precision: 10, scale: 2
    t.integer "land_holding_point_personal"
    t.integer "land_holding_point_all"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "landRemarks"
    t.string "landPresentValue"
    t.string "landTotalArea"
    t.string "landAreaWidth"
    t.string "landAreaDepth"
    t.index ["yfcase_id"], name: "index_lands_on_yfcase_id"
  end

  create_table "objectbuilds", force: :cascade do |t|
    t.string "address"
    t.integer "total_price"
    t.decimal "build_area", precision: 9, scale: 2
    t.decimal "house_age", precision: 5, scale: 2
    t.string "floor_height"
    t.string "objectbuild_url"
    t.string "surveyora"
    t.string "surveyorb"
    t.decimal "plusa", precision: 3, scale: 2
    t.decimal "plusb", precision: 3, scale: 2
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "objectbuild_status"
    t.string "plusa_reason"
    t.string "plusb_reason"
    t.string "objectBuildDealYear"
    t.string "objectBuildDealMonth"
    t.index ["yfcase_id"], name: "index_objectbuilds_on_yfcase_id"
  end

  create_table "personnals", force: :cascade do |t|
    t.boolean "is_debtor"
    t.boolean "is_creditor"
    t.boolean "is_land_owner"
    t.boolean "is_build_owner"
    t.string "name"
    t.string "identity_card"
    t.datetime "birthday"
    t.string "local_phone"
    t.string "mobile_phone"
    t.string "personnal_notes"
    t.string "person_country"
    t.string "person_township"
    t.string "person_village"
    t.string "person_neighbor"
    t.string "person_street"
    t.string "person_section"
    t.string "person_lane"
    t.string "person_alley"
    t.string "person_number"
    t.string "person_floor"
    t.boolean "is_original_owner"
    t.boolean "is_new_owner"
    t.boolean "is_deed_tax_agent"
    t.boolean "is_tax_agent"
    t.string "identity_code"
    t.string "public_or_private"
    t.integer "right_share_person"
    t.integer "right_share_all"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "personnalBuildHoldingPointPerson"
    t.string "personnalBuildHoldingPointAll"
    t.string "ownerFullAddress"
    t.index ["yfcase_id"], name: "index_personnals_on_yfcase_id"
  end

  create_table "plusrateas", force: :cascade do |t|
    t.string "persona"
    t.decimal "plusa", precision: 4, scale: 2
    t.integer "objectbuild_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plusa_reason"
    t.decimal "plusa2", precision: 4, scale: 2
    t.string "plusa_reason2"
    t.index ["objectbuild_id"], name: "index_plusrateas_on_objectbuild_id"
  end

  create_table "plusratebs", force: :cascade do |t|
    t.string "personb"
    t.decimal "plusb", precision: 4, scale: 2
    t.integer "objectbuild_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plusb_reason"
    t.index ["objectbuild_id"], name: "index_plusratebs_on_objectbuild_id"
  end

  create_table "subsigntrueas", force: :cascade do |t|
    t.string "signtruea"
    t.string "signtruea_first_name"
    t.string "signtruea_last_name"
    t.date "signtruea_date"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "signtruea_work_area"
    t.index ["yfcase_id"], name: "index_subsigntrueas_on_yfcase_id"
  end

  create_table "subsigntruebs", force: :cascade do |t|
    t.string "signtrueb"
    t.string "signtrueb_first_name"
    t.string "signtrueb_last_name"
    t.date "signtrueb_date"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "signtrueb_work_area"
    t.index ["yfcase_id"], name: "index_subsigntruebs_on_yfcase_id"
  end

  create_table "subsigntruecs", force: :cascade do |t|
    t.string "signtruec"
    t.string "signtruec_first_name"
    t.string "signtruec_last_name"
    t.date "signtruec_date"
    t.integer "yfcase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "signtruec_work_area"
    t.index ["yfcase_id"], name: "index_subsigntruecs_on_yfcase_id"
  end

  create_table "townships", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.string "district_court"
    t.string "land_office"
    t.string "finance_and_tax_bureau"
    t.string "police_station"
    t.string "irs"
    t.string "home_office"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_townships_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "userIdentityCard"
    t.date "userBirthday"
    t.string "userLocalPhone"
    t.string "userMobilePhone"
    t.string "userCountry"
    t.string "userTownship"
    t.string "userVillage"
    t.string "userNeighbor"
    t.string "userStreet"
    t.string "userSection"
    t.string "userLane"
    t.string "userAlley"
    t.string "userNumber"
    t.string "userFloor"
    t.string "userPublicOrPrivate"
    t.string "userFullName"
    t.string "userWorkArea"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yfcases", force: :cascade do |t|
    t.string "case_number"
    t.string "other_address"
    t.date "auction_day_1"
    t.date "auction_day_2"
    t.date "auction_day_3"
    t.date "auction_day_4"
    t.integer "floor_price_1"
    t.integer "floor_price_2"
    t.integer "floor_price_3"
    t.integer "floor_price_4"
    t.integer "click_1"
    t.integer "click_2"
    t.integer "click_3"
    t.integer "click_4"
    t.integer "monitor_1"
    t.integer "monitor_2"
    t.integer "monitor_3"
    t.integer "monitor_4"
    t.integer "margin_1"
    t.integer "margin_2"
    t.integer "margin_3"
    t.integer "margin_4"
    t.string "auction_notes"
    t.date "first_survey_day"
    t.date "other_survey_day"
    t.string "foreclosure_announcement_title"
    t.string "foreclosure_announcement_link"
    t.string "object_photo_title"
    t.string "object_photo_link"
    t.string "net_price_registration_market_price_title"
    t.string "net_price_registration_market_price_link"
    t.string "net_price_registration_map_title"
    t.string "net_price_registration_map_link"
    t.string "net_price_registration_photo_title"
    t.string "net_price_registration_photo_link"
    t.string "auction_record_title"
    t.string "auction_record_link"
    t.string "other_notes"
    t.string "survey_resolution"
    t.string "final_decision"
    t.boolean "co_owner"
    t.boolean "occupy"
    t.boolean "register"
    t.boolean "parking_space"
    t.boolean "management_fee"
    t.boolean "rent"
    t.boolean "leak"
    t.boolean "easy_parking"
    t.boolean "railway"
    t.boolean "vegetable_market"
    t.boolean "supermarket"
    t.boolean "school"
    t.boolean "park"
    t.boolean "post_office"
    t.boolean "main_road"
    t.boolean "water_and_power_failure"
    t.boolean "good_vision"
    t.date "final_decision_date"
    t.integer "country_id"
    t.integer "township_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "big_section"
    t.string "small_section"
    t.string "company"
    t.string "foreclosure_announcement_988_link"
    t.string "adv_find_condition"
    t.string "active_result"
    t.date "active_result_date"
    t.string "priority_purchase_result"
    t.string "target_number"
    t.date "cause_data"
    t.string "application_for_registration"
    t.string "reason_for_registration"
    t.string "marking_and_application_rights"
    t.string "attached_Document_Content_1"
    t.integer "number_of_attached_quantity_1"
    t.string "attached_Document_Content_2"
    t.integer "number_of_attached_quantity_2"
    t.string "attached_Document_Content_3"
    t.integer "number_of_attached_quantity_3"
    t.string "registration_notes"
    t.date "deedtaxDateOfDeed"
    t.date "deedtaxDeclarationDate"
    t.integer "deedtaxTransferPrice"
    t.string "deedtaxChargeDaffairesTaxDeclarant"
    t.string "deedtaxDebtTaxPaymentReceiptMethod"
    t.string "deedtaxClosedNewsletter"
    t.integer "deedtaxUnderreportedDays"
    t.string "deedtaxRemark"
    t.string "deedtaxBuildingTransferLevel1"
    t.string "deedtaxBuildingTransferLevel2"
    t.string "deedtaxBuildingTransferLevel3"
    t.string "deedtaxBuildingTransferLevel4"
    t.string "deedtaxBuildingTransferLevel5"
    t.string "deedtaxBuildingTransferLevel6"
    t.string "deedtaxBuildingTransferLevel7"
    t.string "deedtaxBuildingTransferStructure1"
    t.string "deedtaxBuildingTransferStructure2"
    t.string "deedtaxBuildingTransferStructure3"
    t.string "deedtaxBuildingTransferStructure4"
    t.string "deedtaxBuildingTransferStructure5"
    t.string "deedtaxBuildingTransferStructure6"
    t.string "deedtaxBuildingTransferStructure7"
    t.string "deedtaxBuildingTransferArea1"
    t.string "deedtaxBuildingTransferArea2"
    t.string "deedtaxBuildingTransferArea3"
    t.string "deedtaxBuildingTransferArea4"
    t.string "deedtaxBuildingTransferArea5"
    t.string "deedtaxBuildingTransferArea6"
    t.string "deedtaxBuildingTransferArea7"
    t.string "deedtaxBuildingTransferPublicBuildingNumber1"
    t.string "deedtaxBuildingTransferPublicBuildingNumber2"
    t.string "deedtaxBuildingTransferPublicBuildingNumber3"
    t.string "deedtaxBuildingTransferPublicBuildingNumber4"
    t.string "deedtaxBuildingTransferPublicBuildingNumber5"
    t.string "deedtaxBuildingTransferPublicArea1"
    t.string "deedtaxBuildingTransferPublicArea2"
    t.string "deedtaxBuildingTransferPublicArea3"
    t.string "deedtaxBuildingTransferPublicArea4"
    t.string "deedtaxBuildingTransferPublicArea5"
    t.string "deedtaxBuildingTransferPublicHoldings1"
    t.string "deedtaxBuildingTransferPublicHoldings2"
    t.string "deedtaxBuildingTransferPublicHoldings3"
    t.string "deedtaxBuildingTransferPublicHoldings4"
    t.string "deedtaxBuildingTransferPublicHoldings5"
    t.string "housingTax"
    t.string "refereeFee"
    t.string "agreementSplitUnsuccessfulDate"
    t.string "exhibit1"
    t.string "exhibit2"
    t.string "exhibit3"
    t.string "exhibit4"
    t.date "tabulationDate"
    t.string "isMobileOrDesktop"
    t.string "realestateregistrationRealEstateAgent"
    t.string "complaintLitigationAgent"
    t.string "debtorName"
    t.string "debtorIdentitycard"
    t.date "debtorBirthday"
    t.string "debtorLocallphone"
    t.string "debtorMobilelphone"
    t.string "debtorNotes"
    t.string "debtorCountry"
    t.string "debtorTownship"
    t.string "debtorVillage"
    t.string "debtorNeighbor"
    t.string "debtorStreet"
    t.string "debtorSection"
    t.string "debtorLane"
    t.string "debtorAlley"
    t.string "debtorNumber"
    t.string "debtorFloor"
    t.string "debtorBuildholdingpointperson"
    t.string "debtorBuildholdingpointall"
    t.string "debtorLandholdingpointperson"
    t.string "debtorLandholdingpointall"
    t.string "creditorName"
    t.string "creditorIdentitycard"
    t.date "creditorBirthday"
    t.string "creditorLocallphone"
    t.string "creditorMobilelphone"
    t.string "creditorNotes"
    t.string "creditorCountry"
    t.string "creditorTownship"
    t.string "creditorVillage"
    t.string "creditorNeighbor"
    t.string "creditorStreet"
    t.string "creditorSection"
    t.string "creditorLane"
    t.string "creditorAlley"
    t.string "creditorNumber"
    t.string "creditorFloor"
    t.string "creditorBuildholdingpointperson"
    t.string "creditorBuildholdingpointall"
    t.string "creditorLandholdingpointperson"
    t.string "creditorLandholdingpointall"
    t.string "houseTaxNumberCountry1"
    t.string "houseTaxNumberCountry2"
    t.string "houseTaxNumberTownship1"
    t.string "houseTaxNumberTownship2"
    t.string "houseTaxNumberBuilding1"
    t.string "houseTaxNumberBuilding2"
    t.string "houseTaxNumberBuilding3"
    t.string "houseTaxNumberBuilding4"
    t.string "houseTaxNumberHouseHold1"
    t.string "houseTaxNumberHouseHold2"
    t.string "houseTaxNumberHouseHold3"
    t.string "newspaperAttached"
    t.boolean "now_or_before"
    t.index ["country_id"], name: "index_yfcases_on_country_id"
    t.index ["township_id"], name: "index_yfcases_on_township_id"
    t.index ["user_id"], name: "index_yfcases_on_user_id"
  end

end
