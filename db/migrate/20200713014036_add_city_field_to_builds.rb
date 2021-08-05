class AddCityFieldToBuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds,:buildCity ,:string
    add_column :builds,:buildTownship ,:string
    add_column :builds,:buildArea ,:string
    add_column :builds,:buildStreet ,:string
    add_column :builds,:buildRoad ,:string
    add_column :builds,:buildSegment ,:string
    add_column :builds,:buildLane ,:string
    add_column :builds,:buildDo ,:string
    add_column :builds,:buildNumber ,:string
    add_column :builds,:buildFloor ,:string
    add_column :builds,:buildBigSegment ,:string
    add_column :builds,:buildSmallSegment ,:string
    add_column :builds,:buildLot ,:string
    add_column :builds,:buildLevel1 ,:string
    add_column :builds,:buildLevel2 ,:string
    add_column :builds,:buildLevel3 ,:string
    add_column :builds,:buildLevel4 ,:string
    add_column :builds,:buildOther1 ,:string
    add_column :builds,:buildOther2 ,:string
    add_column :builds,:buildUse ,:string
    add_column :builds,:buildScopeOfArea ,:string
    add_column :builds,:buildScopeOfRights ,:string
    add_column :builds,:buildRemarks ,:string
  end
end
