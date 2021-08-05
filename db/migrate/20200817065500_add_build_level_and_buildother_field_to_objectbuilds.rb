class AddBuildLevelAndBuildotherFieldToObjectbuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds,:mainBuildLevel1,:string
    add_column :builds,:mainBuildLevel2,:string
    add_column :builds,:mainBuildLevel3,:string
    add_column :builds,:mainBuildLevel4,:string
    add_column :builds,:mainBuildLevel5,:string
    add_column :builds,:mainBuildConstruction1,:string
    add_column :builds,:mainBuildConstruction2,:string
    add_column :builds,:mainBuildConstruction3,:string
    add_column :builds,:mainBuildConstruction4,:string
    add_column :builds,:mainBuildConstruction5,:string
    add_column :builds,:mainBuildArea1,:string
    add_column :builds,:mainBuildArea2,:string
    add_column :builds,:mainBuildArea3,:string
    add_column :builds,:mainBuildArea4,:string
    add_column :builds,:mainBuildArea5,:string
    add_column :builds,:publicBuildNumber1,:string
    add_column :builds,:publicBuildNumber2,:string
    add_column :builds,:publicBuildNumber3,:string
    add_column :builds,:publicBuildNumber4,:string
    add_column :builds,:publicBuildArea1,:string
    add_column :builds,:publicBuildArea2,:string
    add_column :builds,:publicBuildArea3,:string
    add_column :builds,:publicBuildArea4,:string
    add_column :builds,:publicBuildHP1,:string
    add_column :builds,:publicBuildHP2,:string
    add_column :builds,:publicBuildHP3,:string
    add_column :builds,:publicBuildHP4,:string
    add_column :builds,:subBuildUse1,:string
    add_column :builds,:subBuildUse2,:string
    add_column :builds,:subBuildUse3,:string
    add_column :builds,:subBuildArea1,:string
    add_column :builds,:subBuildArea2,:string
    add_column :builds,:subBuildArea3,:string
  end
end
