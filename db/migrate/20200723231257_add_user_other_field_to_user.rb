class AddUserOtherFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userIdentity_card, :string
    add_column :users, :userBirthday, :date
    add_column :users, :userLocalPhone, :string
    add_column :users, :userMobilePhone, :string
    add_column :users, :userNotes, :string
    add_column :users, :userCountry, :string
    add_column :users, :userTownship, :string
    add_column :users, :userVillage, :string
    add_column :users, :userNeighbor, :string
    add_column :users, :userStreet, :string
    add_column :users, :userSection, :string
    add_column :users, :userLane, :string
    add_column :users, :userAlley, :string
    add_column :users, :userNumber, :string
    add_column :users, :userFloor, :string
  end
end
