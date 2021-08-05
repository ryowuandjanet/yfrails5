class AddIdcodeToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :userIdentity_card, :userIdentityCard
    add_column :users, :userIdentityCode, :string
    add_column :users, :userPublicOrPrivate, :string
  end
end
